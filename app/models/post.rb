class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  after_save :update_posts_counter

validates :title, presence: true
validates :title, length: { maximum: 250 }
validates :comments_counter, numericality: {greater_than_or_equal_to: 0}
validates :likes_counter, numericality: {greater_than_or_equal_to: 0}

  def update_posts_counter
    author.update(posts_counter: author.posts.count)
  end

  def five_most_recent_comments
    comments.order(updated_at: :desc).first(5)
  end

  private :update_posts_counter
end
