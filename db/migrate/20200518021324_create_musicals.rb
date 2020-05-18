class CreateMusicals < ActiveRecord::Migration[6.0]
  def change
    create_table :musicals do |t|
      t.string :name
      t.string :cast, array: true, default: []
      t.string :understudies, array: true, default: []
      t.string :theater
      t.string :playbill

      t.timestamps
    end
  end
end
