class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_save :update_user_counter

  # validates :title, presence: true, length: { maximum: 250 }
  # validates :comments_counter, :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_user_counter
    author.update(post_counter: author.posts.count)
  end

  def five_most_ricent_comments
    comments.order(created_at: :desc).limit(5)
  end

  private :update_user_counter
end
