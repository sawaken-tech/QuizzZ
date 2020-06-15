class Question < ApplicationRecord
  belongs_to :user
  has_many   :rates
  has_many   :comments
  has_one    :answer
end