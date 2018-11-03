class User < ApplicationRecord
has_many :to_buys
has_many :works, through: :to_buys
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def task_count()
     self.to_buys.count
  end
end
