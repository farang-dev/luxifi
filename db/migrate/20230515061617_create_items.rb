class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :brand
      t.integer :price
      t.string :gender

      t.timestamps
    end
  end
end
