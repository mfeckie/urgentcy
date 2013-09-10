def create_and_sign_in
  @user = FactoryGirl.create(:user)
  sign_in :user, @user
end