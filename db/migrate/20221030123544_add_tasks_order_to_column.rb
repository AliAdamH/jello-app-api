class AddTasksOrderToColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :columns, :task_orders, :integer, array: true
  end
end
