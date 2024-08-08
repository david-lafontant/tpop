FactoryBot.define do
  factory :user do
    email { 'email@email.com' }
    password { 'pasword123456789' }
    role { 0 }
  end
end
