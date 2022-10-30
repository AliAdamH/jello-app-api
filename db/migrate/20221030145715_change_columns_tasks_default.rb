class ChangeColumnsTasksDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :columns, :task_orders, from: nil, to: []
  end
end
