require 'rails_helper'

describe "Sessions" do
  it "signs user in and out" do
    user = create(:user)    ## uncomment if using FactoryBot
    sign_in user
    get root_path
    expect(response).to have_http_status(:success) # add gem 'rails-controller-testing' to your Gemfile first.
    
    sign_out user
    get root_path
    expect(response).not_to have_http_status(:error) # add gem 'rails-controller-testing' to your Gemfile first.
  end
end