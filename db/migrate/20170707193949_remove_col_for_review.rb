class RemoveColForReview < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :content
  end
end
