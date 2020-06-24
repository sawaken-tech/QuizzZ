class Answer < ApplicationRecord
  belongs_to  :question, optional: true
  has_many    :fours
  has_many    :sorts
  has_one     :description
  validates :answer, :explain, :genre, presence: true
  accepts_nested_attributes_for :fours
end
