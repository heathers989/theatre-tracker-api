class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :show_seen
      t.string :cast_to_see
      t.date :date_of_show
      t.boolean :if_understudies
      t.string :understudies_seen, array: true, default: []
      t.integer :rating
      t.boolean :if_stagedoor
      t.string :at_stagedoor, array: true, default: []
      t.string :photos
      t.string :comments

      t.timestamps
    end
  end
end
