class GamesController < ApplicationController

  def new
    old = old_game
    easy = if old == nil || old.question_number == 5
             1
           else
             old.question_number + 1
           end
    @question = Question.joins("INNER JOIN answers ON answers.question_id = questions.id").where(question_level: easy).sample
  end

  def create
    @game = Game.new(game_params)
    old = old_game
    if old == nil
      @game.game = 1
      @game.question_number = 1
    elsif old.question_number == 5
      @game.game = old.game + 1
      @game.question_number = 1
    else
      @game.game = old.game
      @game.question_number = old.question_number + 1
    end
    answer = Answer.where(id: game_params[:answer_id]).first
    true_answer_message = count_total(answer)
    @game.point = count_points(answer)
    if @game.save
      game_finished = " "
      if old != nil and old.question_number == 4
        total = create_or_update_users_top_games
        game_finished = " You finished the game , Yuor total is: " + total.to_s
      end
      result = "You are " + answer.is_correct.to_s + ". Your points:" + @game.point.to_s + true_answer_message + game_finished
      redirect_to '/games/new', notice: result
    else
      redirect_to '/games/new'
    end
  end

  private def old_game
    Game.where(user_id: current_user.id).order(game: :desc, question_number: :desc).first
  end

  private def count_total(answer)
    if answer.is_correct?
      true_answer_m = " "
    else
      true_answer = Answer.where(question_id: answer.question_id, is_correct: true).first
      if true_answer.nil?
        true_answer_m = " There are not yet true answer"
      else
        true_answer_m = " True Answer is: " + true_answer.text.to_s
      end
    end
    return true_answer_m
  end

  private def count_points(answer)
    if answer.is_correct?
      case Question.where(id: answer.question_id).first.question_level
      when 1
        5
      when 2
        10
      when 3
        15
      when 4
        20
      when 5
        20
      else
        20
      end
    else
      0
    end
  end

  private def create_or_update_users_top_games
    total = Game.where(user_id: current_user.id, game: old_game.game).sum(:point)
    top = UsersTopGame.where(user_id: current_user.id).first
    if top == nil
      UsersTopGame.create({"user_id" => current_user.id, "point" => total})
    elsif (total > top.point)
      top.update("point" => total)
    end
    return total
  end

  private def game_params
    params.require(:game).permit(:answer_id).merge(user_id: current_user.id)
  end

  def top_points
    # sql = "SELECT
    #             (
    #                 SELECT
    #         SUM(point)
    #         FROM
    #         games
    #         WHERE user_id = game.user_id And game = game.game
    #         ) AS user_point
    #         FROM games as game
    #         WHERE user_id = "+current_user.id.to_s+"
    #         GROUP BY game
    #         ORDER BY user_point DESC LIMIT 1"
    # @user_stat = ActiveRecord::Base.connection.execute(sql)

    @top_point = UsersTopGame.where(user_id: current_user.id).first
    @top_users_points = UsersTopGame.order(point: :DESC).limit(10)
  end
end
