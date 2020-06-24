class Answer < ApplicationRecord
  belongs_to  :question, optional: true
  validates :answer, :explain, :genre, presence: true
end
