class Question < ApplicationRecord
  belongs_to :user
  has_many   :rates
  has_many   :comments
  has_one    :answer, dependent: :destroy
  validates :title, :sentence, :question_format, presence: true


  def iine(user)
    rates.create(user_id: user.id)
  end

  def uniine(user)
    rates.find_by(user_id: user.id).destory
  end


end