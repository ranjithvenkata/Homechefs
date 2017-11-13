class RenameTimeoflastorderindishes < ActiveRecord::Migration[5.0]
  def change
    rename_column :dishes, :time_of_last_Order, :time_of_last_order
  end
end
