class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.integer :phone_no
      t.string :role
      t.timestamps
    end
  end
end
