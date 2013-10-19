# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    drive_type "MyString"
    capacity 1
    vacancy 1
    plate_no "MyString"
    model "MyString"
  end
end
