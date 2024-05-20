class CreateUserTransacts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_transacts do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      
      t.timestamps
    end
  end
end
