FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    first_name {Faker::Name.first_name}
    family_name {Faker::Name.last_name}
    first_name_kana {Faker::Name.first_name}
    family_name_kana {Faker::Name.last_name}
    birthday {Faker::Date.birthday(min_age: 18, max_age: 65)}
  end
end