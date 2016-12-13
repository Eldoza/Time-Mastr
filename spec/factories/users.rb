FactoryGirl.define do
  factory :user do
    first_name 'Chuck'
    last_name 'Norris'
    email 'test@test.com'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email 'admin@user.com'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end
