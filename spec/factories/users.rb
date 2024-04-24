FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.email}
    password = '1a' + Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    first_name {"太郎"} #全角の名前に変更 
    family_name {"山田"} #全角の姓に変更
    first_name_kana {"タロウ"} #全角カナの名前に変更
    family_name_kana {"ヤマダ"} #全角カナの姓に変更
    birthday {Faker::Date.birthday(min_age: 18, max_age: 65)}
  end
end