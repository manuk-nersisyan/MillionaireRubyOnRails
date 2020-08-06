ActiveAdmin.register Answer do

  belongs_to :question, optional: true

  permit_params :text, :question_id, :is_correct

  form do |f|
    f.inputs do
      f.input :question_id, :label => 'Question', :as => :select, :collection => Question.all.map{|u| ["#{u.text}", u.id]}
      f.input :text
      f.input :is_correct
    end
    f.actions

  end


end
