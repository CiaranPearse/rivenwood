class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :last_name
      t.string :postal
      t.references :user, index: true
      t.string :user_url
      t.text :bio
      t.text :avitar

      t.timestamps
    end
  end
end
