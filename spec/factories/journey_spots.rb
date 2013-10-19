# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :journey_spot do
    journey nil
    spot nil
    spot_type "MyString"
  end
end
