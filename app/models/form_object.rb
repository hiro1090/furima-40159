class FormObject
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :postal_code, :prefecture_id, :city, :address, :building_name, :phone, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/, message: 'は「3桁ハイフン4桁」の形式で入力してください' }
    validates :prefecture_id
    validates :city
    validates :address
    validates :phone, format: { with: /\A\d{10,11}\z/, message: 'は10桁以上11桁以内で入力してください' }
    validates :token
  end

  def save
    user_transact = UserTransact.create(user_id:, item_id:)
    Address.create(postal_code:, prefecture_id:, city:,
                   address:, building_name:, phone:,
                   user_transact_id: user_transact.id)
  end
end
