class Question < ApplicationRecord
  belongs_to :user
  has_many   :rates
  has_many   :comments
  has_one    :answer, dependent: :destroy
  validates :title, :sentence, :question_format, presence: true
  has_many :iine_users, through: :rates, source: :user

  def iine(user)
    rates.create(user_id: user.id)
  end

  def uniine(user)
    rates.find_by(user_id: user.id).destory
  end

  def iine?(user)
    iine_users.include?(user)
  end


end