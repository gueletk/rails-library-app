class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :card_num
      t.integer :pin

      t.timestamps null: false
    end
  end
end
