class AddColumnOrderIdsToBoard < ActiveRecord::Migration[7.0]
  def change
	change_table :boards do |t|
		t.rename :columns_order, :col_order_ids
	end
  end
end
