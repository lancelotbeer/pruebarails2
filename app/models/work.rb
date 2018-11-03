class Work < ApplicationRecord
  has_many :to_buys
  has_many :user, through: :to_buys

  def check_completed(user)
    ToBuy.where(user: user, work: self).first.try(:completed)
  end
end
