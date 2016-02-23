class Track < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  validates :title, presence: true
  validates :author, presence: true
  validates :url, presence: true
  validates :user_id, presence: true
  validates :vote_count, numericality: { only_integer: true }

end