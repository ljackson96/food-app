class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :href
      t.references :likes
      t.text :ingredients
      t.string :thumbnail
      t.timestamps
    end
  end
end
