FactoryBot.define do
  factory :form_object do
    postal_code { '123-4567' } # 3桁-4桁の形式で郵便番号を設定
    prefecture_id { 2 }
    city { 'Tokyo' }
    address { '1-1-1' }
    building_name { 'MyString' }
    phone { '09012345678' } # 10桁以上11桁以内の形式で電話番号を設定
    token { 'tok_xxxxxxxxxxxxxx' }
  end
end
