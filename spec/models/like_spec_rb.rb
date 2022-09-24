require 'rails_helper'

RSpec.describe Like, type: :model do
  new_post = Post.create(title: 'my comment', author: User.create(name: 'Brenda'))
  other_user = User.create(name: 'Cisco')
  subject { Like.create(author: other_user, post: new_post) }

  it 'UpdatesLikesCounter increments post likes_counter' do
    expect(subject.post.likes_counter).to be 1
    Like.create(author: subject.post.author, post: subject.post)
    expect(subject.post.likes_counter).to be 2
  end
end
