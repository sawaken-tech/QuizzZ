class Answer < ApplicationRecord
  belongs_to  :question
  has_one     :four
  has_one     :sort
  has_one     :description
end
