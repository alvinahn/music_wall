class AddReviewCountToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :review_count, :integer
  end
end
