class ChangeVotesTable < ActiveRecord::Migration
  def change
    add_column :votes, :id, :primary_key
  end
end
