class Post < ApplicationRecord
  has_many :comments
  has_one_attached :video
  #validates :video, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
