FactoryGirl.define do
  factory :booking do
    required_minutes 10
    required_hours 2
    notice_required 20
    availability 'Anytime'
    booking_status 'provisional'
    location
    patient
    surgeon
    surgical_procedure
    surgical_specialty
  end
end