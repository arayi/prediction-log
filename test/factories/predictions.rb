# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prediction do
    user "MyString"
    prediction "MyText"
    pdate "MyString"
    time "MyString"
  end
end
