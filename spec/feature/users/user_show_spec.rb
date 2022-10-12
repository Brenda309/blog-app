require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  describe 'test' do
    before(:each) do
      @first_user = User.create(name: 'Tom', photo: 'https://images.pexels.com/photos/1181667/pexels-photo-1181667',
                                bio: 'I am the sunny at Frye Elementary. I moved to Arizona in 1993 from Oregon and
                                never looked back,
      despite the hot, dry Arizona summers. I have been a part of the Frye family since the 2000-2001 school year.
     Outside of school, I enjoy reading, going to the movies, traveling to warm beaches,
     shopping and spending time with my family and friends.
     My husband,Patrick and I live in Ahwatukee with our daughter, Reagan and our three cats.')

      @first_post = Post.create(author: @first_user, title: 'growth-mindset',
                                text: 'Carol Dweck studies human motivation. She spends her days diving into
why people succeed (or don’t) and what’s within our control to foster success.
Her theory of the two mindsets and the difference they make in outcomes is incredibly powerful.')

      @second_post = Post.create(author: @first_user, title: 'Time Management',
                                 text: 'While some people are able to power through the day,
maintaining focus and accomplishing their goals,
time management is an area where most of us tend to struggle.
The good news, however, is that being productive doesn’t just
“happen” for certain people —
it actually involves a set of learnable skills that can be practiced and mastered by anyone.')

      @third_post = Post.create(author: @first_user, title: 'technology of tomorrow',
                                text: 'Technology for Tomorrow (T4T) is a non-profit 501(c)(3) organization empowering
people in need by providing technology education and counseling through various national,
state, and local collaboration projects and partnerships in order to help those individuals
 reach their professional and personal goals free of charge')
      visit user_path(@first_user)

      @fourth_post = Post.create(author: @first_user, title: 'Hello', text: 'This is my fourth post')
    end

    it 'shows user name' do
      expect(page).to have_content(@first_user.name)
    end

    it 'shows the page title' do
      expect(page).to have_content('User information')
    end

    it 'the number of posts the user has written.' do
      expect(page).to have_content('Number of Posts: 3')
    end

    it 'shows  see the user\'s bio.' do
      expect(page.body).to have_content(@first_user.bio)
    end

    it 'shows  see the user\'s bio.' do
      expect(page.body).to have_content('See all posts')
    end

    it 'I can see a button that lets me view all of a user\'s posts.' do
      click_link('See all posts')
      expect(page).to have_content('List of posts')
    end

    it 'when a user\'s post is clicked, it redirects to that post\'s show page.' do
      click_link(@first_post.title)
      expect(page).to have_content('Post informations')
    end
  end
end
