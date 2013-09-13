# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  Faker::Config.locale = 'en-au'
  factory :surgeon do

    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    telephone_number {Faker::PhoneNumber.phone_number}
    mobile_number {Faker::PhoneNumber.cell_phone}
    pager {Faker::Number.number(3)}
  end
end
