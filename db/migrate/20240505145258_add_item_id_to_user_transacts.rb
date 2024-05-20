class AddItemIdToUserTransacts < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_transacts, :item, null: false, foreign_key: true
  end
end
