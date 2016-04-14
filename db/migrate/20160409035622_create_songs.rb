class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :url
	  t.string :uid
      t.timestamps null: false
    end
  end
end
