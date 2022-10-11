require 'rails_helper'

RSpec.describe 'Post index page', type: :feature do
  describe 'test' do
    before(:each) do
      @first_user = User.create(name: 'Tom', photo: 'https://images.pexels.com/photos/1181667/pexels-photo-1181667',
                                bio: 'I am the sunny at Frye Elementary. I moved to Arizona in 1993 from Oregon and
never looked back,despite the hot, dry Arizona summers.
I have been a part of the Frye family since the 2000-2001 school year.
     Outside of school, I enjoy reading, going to the movies, traveling to warm beaches,
     shopping and spending time with my family and friends.
     My husband, Patrick and I live in Ahwatukee with our daughter, Reagan and our three cats.')

      @first_post = Post.create(author: @first_user, title: 'growth-mindset',
                                text: 'Carol Dweck studies human motivation. She spends her days diving
into why people succeed (or don’t) and what’s within our control to foster success.
Her theory of the two mindsets and the difference they make in outcomes is incredibly powerful.')

      @second_post = Post.create(author: @first_user, title: 'Time Management',
                                 text: 'While some people are able to power through the day,
     maintaining focus and accomplishing their goals,
 time management is an area where most of us tend to struggle.
  The good news, however, is that being productive doesn’t just “happen” for certain people —
  it actually involves a set of learnable skills that can be practiced and mastered by anyone.')

      @third_post = Post.create(author: @first_user, title: 'technology of tomorrow',
                                text: 'Technology for Tomorrow (T4T) is a non-profit 501(c)(3)
 organization empowering people in need by providing technology education and counseling
 through various national, state, and local collaboration projects and partnerships in
order to help those individuals reach their professional and personal goals free of charge')

      Comment.create(post: @first_post, author: @first_user, text: 'Hi Tom!')
      Comment.create(post: @first_post, author: @first_user, text: 'Hi nice!')
      Comment.create(post: @first_post, author: @first_user, text: 'interesting!')

      visit user_path(@first_user, @first_post)
    end

    it 'displays a post\'s title.' do
      expect(page).to have_content(@first_post.title)
    end

    it 'shows the page title' do
      expect(page).to have_content('User information')
    end

    it 'shows number of comments the post has' do
      expect(page.body).to include('Comments: ')
    end

    it 'shows number of likes the post has' do
      expect(page.body).to include('Likes: ')
    end

    it 'shows the whole body of a comment' do
      expect(page).to have_content('technology of tomorrow')
    end

    it 'has a button to give likes on the post' do
      expect(page.body).to include('Add Like')
    end

    it 'has a text_area for writing comments' do
      expect(page.body).to include('Add comment')
    end
  end
end
