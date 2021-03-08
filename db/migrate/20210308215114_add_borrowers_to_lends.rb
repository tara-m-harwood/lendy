class AddBorrowersToLends < ActiveRecord::Migration[6.1]
  def change
    add_reference :lends, :borrower, null: false, foreign_key: true
  end
end
