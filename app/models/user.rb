class User < ActiveRecord::Base
  has_many :tracks

  validates :email, presence: true, length: { minimum: 3 }, format: { with: /\A([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})\z/, message: "Please put a valid email type." }
  validates :password, presence: true, length: { minimum: 5 }
end