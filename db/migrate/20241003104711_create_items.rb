class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :purchase_url
      t.decimal :price
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
