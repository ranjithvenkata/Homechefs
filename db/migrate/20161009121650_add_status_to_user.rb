class AddStatusToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :status, foreign_key: true
  end
end
