class Question < ApplicationRecord
  belongs_to :user
  has_many   :rates
  has_many   :comments
  has_one    :answer, dependent: :destroy
  validates :title, :sentence, :question_format, presence: true

  def rated_by?(user)
    rates.where(user_id: user.id).exists?
  end

end