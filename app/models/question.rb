class Question < ApplicationRecord
  belongs_to :user
  has_many   :users, through: :rates
  has_many   :rates
  has_many   :comments
  has_one    :answer, dependent: :destroy
  validates :title, :sentence, :question_format, presence: true

end