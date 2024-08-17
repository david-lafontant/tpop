FactoryBot.define do
  factory :business do
    business_name { 'MyString' }
    first_name { 'MyString' }
    last_name { 'MyString' }
    phone { 'MyString' }
    adress1 { 'MyString' }
    adress2 { 'MyString' }
    city { 'MyString' }
    zipcode { 'MyString' }
    state { 'MyString' }
    country { 'MyString' }
    description { nil }
    user { nil }
  end
end
