class AddForeignKeyToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :musical_id, :integer
  end
end
