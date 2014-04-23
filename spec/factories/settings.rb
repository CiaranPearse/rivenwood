# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :setting do
    update_emails false
    digest_emails false
    promotional_emails false
    user nil
  end
end
