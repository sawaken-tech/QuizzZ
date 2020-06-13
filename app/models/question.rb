class Question < ApplicationRecord
  belongs_to :user
  has_many   :rates
  has_many   :fours
  has_many   :sorts
  has_many   :descriptions
end