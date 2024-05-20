class CreateUserTransacts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_transacts do |t|

      t.timestamps
    end
  end
end
