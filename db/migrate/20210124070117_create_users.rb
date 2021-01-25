class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.string :google_token
      t.string :google_refresh_token

      t.timestamps
    end
  end
end
