class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.references :song, index: true, foreign_key: true
      t.string :heartbeat
      t.datetime :last_heard_at

      t.timestamps null: false
      
	  	# add_column :song_lists, :heart_beat, :datetime  
	  	# add_column :song_lists, :name, :string  
	  	# add_column :song_lists, :length, :integer  	
	  	# add_column :song_lists, :utubeid, :string
    end
  end
end
