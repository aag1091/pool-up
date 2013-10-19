# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :journey do
    source nil
    destination nil
    points_per_seat 1
    start_time ""
    end_time ""
  end
end
