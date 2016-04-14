class CreateSongUsers < ActiveRecord::Migration
  def change
    create_table :song_users do |t|
      t.references :song, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end