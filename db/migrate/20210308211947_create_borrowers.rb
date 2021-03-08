class CreateBorrowers < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowers do |t|
      t.string :name

      t.timestamps
    end
  end
end
