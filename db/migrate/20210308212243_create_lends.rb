class CreateLends < ActiveRecord::Migration[6.1]
  def change
    create_table :lends do |t|
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.boolean :complete

      t.timestamps
    end
  end
end
