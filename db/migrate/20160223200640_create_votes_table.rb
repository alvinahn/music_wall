class CreateVotesTable < ActiveRecord::Migration
  def change
    create_join_table :tracks, :users, table_name: :votes do |t|
      t.integer :vote_count
      t.timestamps
    end
  end
end
