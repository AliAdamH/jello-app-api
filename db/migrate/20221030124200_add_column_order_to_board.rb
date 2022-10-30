class AddColumnOrderToBoard < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :columns_order, :integer, array: true
  end
end
