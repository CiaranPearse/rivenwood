class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :title
      t.text :slug
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
