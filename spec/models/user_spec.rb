require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user, email: 'user1@test.com') }

  it 'sets email correctly' do
    expect(user.email).to eq 'user1@test.com'
    expect(user.email).to be_present
  end
  
end
