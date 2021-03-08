class RemoveUserFromLends < ActiveRecord::Migration[6.1]
  def change
    remove_reference :lends, :user, null: false, foreign_key: true
  end
end
