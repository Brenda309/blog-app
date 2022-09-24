class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'

  validates :name, presence: true
  validates :post_counter, numericality: { greater_than_or_equal_to: 0 }

  def last_three_posts
    Post.where(author: self).order(created_at: :desc).first(3)
  end
end