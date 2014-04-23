# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    first_name "MyText"
    last_name "MyText"
    postal "MyString"
    user nil
    user_url "MyString"
    bio "MyText"
    avitar "MyText"
  end
end
