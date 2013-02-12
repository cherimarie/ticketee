FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "unicorn#{n}@ticketee.com" }
    password "password"
    password_confirmation "password"
end end