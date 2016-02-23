class ChangeVoteCountColumnDefault < ActiveRecord::Migration
  def change
    change_column_default(:tracks, :vote_count, 0)
  end
end
