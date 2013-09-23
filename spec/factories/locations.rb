FactoryGirl.define do
  factory :location do
    sequence(:name) { |n| "Location #{n}" }
    sequence(:ordering_number)
  end
end