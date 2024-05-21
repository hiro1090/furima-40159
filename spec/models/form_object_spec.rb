require 'rails_helper'

RSpec.describe FormObject, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @address = FactoryBot.build(:form_object, user_id: user.id, item_id: item.id)
  end

  describe '購入情報の保存' do
    context '購入情報が保存できる場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@address).to be_valid
      end

      it 'building_nameは空でも保存できること' do
        @address.building_name = ''
        expect(@address).to be_valid
      end
    end

    context '購入情報が保存できない場合' do
      it 'postal_codeが空だと保存できないこと' do
        @address.postal_code = ''
        @address.valid?
        expect(@address.errors.full_messages).to include("Postal code can't be blank")
      end

      it 'postal_codeにハイフンが含まれていないと保存できないこと' do
        @address.postal_code = '1234567'
        @address.valid?
        expect(@address.errors.full_messages).to include('Postal code は「3桁ハイフン4桁」の形式で入力してください')
      end

      it 'prefecture_idが1では保存できないこと' do
        @address.prefecture_id = 1
        @address.valid?
        expect(@address.errors.full_messages).to include("Prefecture must be other than 1")
      end

      it 'cityが空だと保存できないこと' do
        @address.city = nil
        @address.valid?
        expect(@address.errors.full_messages).to include("City can't be blank")
      end

      it 'addressが空だと保存できないこと' do
        @address.address = nil
        @address.valid?
        expect(@address.errors.full_messages).to include("Address can't be blank")
      end

      it 'phoneが空だと保存できないこと' do
        @address.phone = nil
        @address.valid?
        expect(@address.errors.full_messages).to include("Phone can't be blank")
      end

      it 'phoneが10桁未満だと保存できないこと' do
        @address.phone = '123456789'
        @address.valid?
        expect(@address.errors.full_messages).to include( "Phone は10桁以上11桁以内の半角数字で入力してください")
      end

      it 'phoneが11桁を超えると保存できないこと' do
        @address.phone = '123456789012'
        @address.valid?
        expect(@address.errors.full_messages).to include( "Phone は10桁以上11桁以内の半角数字で入力してください")
      end

      it 'phoneが半角英数字以外だと保存できないこと' do
        @address.phone = '０９０１２３４５６７８'
        @address.valid?
        expect(@address.errors.full_messages).to include( "Phone は10桁以上11桁以内の半角数字で入力してください")
        end

        it 'itemが紐づいていないと保存できないこと' do
          @address.item_id = nil
          @address.valid?
          expect(@address.errors.full_messages).to include("Item can't be blank")
          end

          it 'userが紐づいていないと保存できないこと' do
            @address.user_id = nil
            @address.valid?
            expect(@address.errors.full_messages).to include("User can't be blank")
        end


      it 'tokenが空だと保存できないこと' do
        @address.token = nil
        @address.valid?
        expect(@address.errors.full_messages).to include("Token can't be blank")
      end

      # その他の項目についても同様にテストを書いていく
    end
  end
end
