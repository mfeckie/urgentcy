require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create :user }

  subject { user }

  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should be_valid }

  describe 'fails when missing ' do

    before :each do
      @user = FactoryGirl.build_stubbed :user
    end

    it 'first_name' do
      @user.first_name = nil
      expect(@user).to be_invalid
    end

    it 'last_name' do
      @user.last_name = nil
      expect(@user).to be_invalid
    end

    it 'email' do
      @user.email = nil
      expect(@user).to be_invalid
    end

  end

end
