class AddAudioPreferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :music_playing, :boolean
    add_column :users, :game_sound, :boolean
    add_column :users, :music_volume, :float
    add_column :users, :game_volume, :float
  end
end
