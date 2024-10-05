class CreateSelectedTags < ActiveRecord::Migration[7.2]
  def change
    create_table :selected_tags do |t|
      t.integer :tag_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
