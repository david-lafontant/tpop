FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { nil }
    price { "9.99" }
    poster { nil }
    user { nil }
  end
end
