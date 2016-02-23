class User < ActiveRecord::Base
  has_many :tracks

  validates :email, presence: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 5 }
end