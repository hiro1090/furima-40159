FactoryBot.define do
  factory :item do
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.jpeg'), filename: 'test.jpeg')
    end
    name { 'ChangedName' }
    description { 'ChangedDescription' }
    price { 500 }
    user { FactoryBot.create(:user) }
    item_condition_id { 3 }
    delivery_charge_id { 3 }
    delivery_day_id { 3 }
    prefecture_id { 3 }
    category_id { 3 }
  end
end
