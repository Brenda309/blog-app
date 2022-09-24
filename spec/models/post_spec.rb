require 'rails_helper'

RSpec.describe Post, type: :model do
  #tests go here
 subject { Post.create(title: 'My comment', author: User.new(name: 'Brenda')) }

   it 'title should be present' do 
    subject.title = nil
    expect(subject).to_not be_valid
   end

   it 'title should not be over 250 words' do
    subject.title = 250
    expect(subject).to_not be_valid
   end
   it 'comment counter should be greater than or equal to 0' do
   subject.comments_counter = -1
   expect(subject).to_not be_valid
   end 

   it 'like counter should be greater than or equal to 0' do
   subject.likes_counter = -1
   expect(subject).to_not be_valid
   end 
end