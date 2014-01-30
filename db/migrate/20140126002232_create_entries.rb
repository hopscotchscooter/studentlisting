class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :gravatarimage_image_url

      t.timestamps
    end
  end
end
