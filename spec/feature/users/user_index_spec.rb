require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  describe 'test' do
    before(:each) do
      @user = User.create(name: 'Tom', photo:'https://images.pexels.com/photos/1181667/pexels-photo-1181667', 
      bio: 'I am the sunny at Frye Elementary. I moved to Arizona in 1993 from Oregon and never looked back, 
      despite the hot, dry Arizona summers. I have been a part of the Frye family since the 2000-2001 school year.
       Outside of school, I enjoy reading, going to the movies, traveling to warm beaches, 
       shopping and spending time with my family and friends. 
       My husband, Patrick and I live in Ahwatukee with our daughter, Reagan and our three cats.')
      @id = @user.id
      Post.create(author: @user, title: "Hello", text: 'This is my first post')
      visit users_path
    end

    it 'shows user name' do
      expect(page).to have_content(@user.name)
    end

     it 'shows the welcome' do
      expect(page).to have_content('Welcome')
    end
  it 'shows the photo' do
      expect(page.body).to include('https://images.pexels.com/photos/1181667/pexels-photo-1181667')
    end

      it 'the number of posts each user has written.' do
      expect(page.body).to have_content('Number of Posts: 1')
    end

     it 'When I click on a user, I am redirected to that user.' do
      click_link(@user.name)
      expect(page).to have_content('User informations')
    end
end

end