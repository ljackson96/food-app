class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :thumbnail
      t.string :name
      t.integer :likes
      t.text :description
      t.integer :cook_time
      t.string :vid_url
      t.text :instruction
      t.timestamps
    end
  end
end
