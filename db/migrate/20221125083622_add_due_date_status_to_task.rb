class AddDueDateStatusToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :due_date_status, :integer
  end
end
