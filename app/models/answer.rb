class Answer < ApplicationRecord
  belongs_to :question
  validates_length_of :text, minimum: 1 , maximum: 255
end
