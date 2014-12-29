require 'rails_helper'

RSpec.describe User, :type => :model do
  it {should validate_presence_of :password_digest}
  it {should validate_presence_of :user_email}
  it {should validate_presence_of :user_fullname}

  context 'when creating new users' do
    before :all do
      @user = create(:user)
    end

    it 'should set default values for admin privileges' do
      expect(@user.priv_administer).to eq(false)
      expect(@user.priv_new_forms).to eq(false)
    end

    it 'should create enabled users' do
      expect(@user.enabled).to eq(true)
    end
  end
end
