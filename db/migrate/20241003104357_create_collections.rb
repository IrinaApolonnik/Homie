class CreateCollections < ActiveRecord::Migration[7.2]
  def change
    create_table :collections do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
