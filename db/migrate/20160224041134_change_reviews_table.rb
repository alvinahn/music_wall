class ChangeReviewsTable < ActiveRecord::Migration
  def change
    add_column :reviews, :id, :primary_key
  end
end
