class AddEmailToBorrowers < ActiveRecord::Migration[6.1]
  def change
    add_column :borrowers, :email, :string
  end
end
