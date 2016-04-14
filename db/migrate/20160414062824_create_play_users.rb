class CreatePlayUsers < ActiveRecord::Migration
  def change
    create_table :play_users do |t|
    	t.integer :play_id
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
