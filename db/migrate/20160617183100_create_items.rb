class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :checked_out
      t.string :type
      t.integer :barcode_num
      t.string :author

      t.timestamps null: false
    end
  end
end
