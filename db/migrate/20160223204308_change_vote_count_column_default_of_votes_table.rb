class ChangeVoteCountColumnDefaultOfVotesTable < ActiveRecord::Migration
  def change
    change_column_default(:votes, :vote_count, 0)
  end
end
