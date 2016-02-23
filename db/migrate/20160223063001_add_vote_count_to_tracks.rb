class AddVoteCountToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :vote_count, :integer
  end
end
