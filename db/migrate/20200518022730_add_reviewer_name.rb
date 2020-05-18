class AddReviewerName < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :reviewer_name, :string
  end
end
