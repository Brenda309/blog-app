require 'rails_helper'

RSpec.describe User, type: :model do
  # tests go here
  subject { User.new(name: 'Brenda') }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'post counter should be greater than or equal to 0' do
    subject.post_counter = -1
    expect(subject).to_not be_valid
  end
end
