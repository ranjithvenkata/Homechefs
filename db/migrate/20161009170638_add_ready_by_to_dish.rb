class AddReadyByToDish < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :ready_by, :datetime
  end
end
