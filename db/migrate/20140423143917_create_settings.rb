class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :update_emails
      t.boolean :digest_emails
      t.boolean :promotional_emails
      t.references :user, index: true

      t.timestamps
    end
  end
end
