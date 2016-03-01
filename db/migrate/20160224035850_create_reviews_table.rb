class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_join_table :tracks, :users, table_name: :reviews, id: true do |t|
      t.string :content
      t.timestamps
    end
  end
end
