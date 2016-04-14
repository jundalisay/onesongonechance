class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :email
      t.date :birthday
      t.string :uid
      t.string :oauth_token
      t.string :provider
      t.datetime :oauth_expires_at

      # preferences
      t.string :preferred_gender
      t.integer :preferred_age
		
      t.boolean :admin, default: false	
      t.timestamps null: false
    end
  end
end
