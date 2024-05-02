FactoryBot.define do
  factory :item do
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.jpeg'), filename: 'test.jpeg')
    end
    name { 'MyString' }
    description { 'MyText' }
    price { 300 } # 価格を300以上に設定
    user { FactoryBot.create(:user) } # ユーザーを設定
    item_condition_id { 2 } # 各項目を1以外に設定
    delivery_charge_id { 2 }
    delivery_day_id { 2 }
    prefecture_id { 2 }
    category_id { 2 }
  end
end