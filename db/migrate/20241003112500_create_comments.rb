class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.integer :collection_id
      t.text :content

      t.timestamps
    end
  end
end
