class Post < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :typepost, presence: true
  validates :url, presence: true
  validates :score, presence: true
  validates :author, presence: true
end
