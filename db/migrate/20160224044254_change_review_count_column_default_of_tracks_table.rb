class ChangeReviewCountColumnDefaultOfTracksTable < ActiveRecord::Migration
  def change
    change_column_default(:tracks, :review_count, 0)
  end
end
