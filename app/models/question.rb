class Question < ApplicationRecord
  has_many :answers
  validates_length_of :text, minimum: 5 , maximum: 255
  validates_inclusion_of :question_level, :in => 1..5
end


