FactoryBot.define do

  sequence(:email) { |n| "user#{n}@gmail.com" }

  factory :user do
    email
    password "123456"
    first_name "abedelrahman"
    last_name "khadra"
    admin false
  end

  factory :admin, class: User do
    email
    password "123456"
    admin true
    first_name "Adminabed"
    last_name "khadra"
  end
end
