FactoryBot.define do
  factory :user_transact do
    user { association :user }
    item { association :item }
  end
end
