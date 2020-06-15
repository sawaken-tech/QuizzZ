class Answer < ApplicationRecord
  belongs_to  :question, optional: true
  has_one     :four
  has_one     :sort
  has_one     :description
  validates :answer, :explain, :genre, presence: true
end
