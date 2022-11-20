class Task < ApplicationRecord
  belongs_to :column
  has_and_belongs_to_many :labels
  after_create :update_col_task_order


  def update_col_task_order
    old_tasks = column.task_orders
    column.update_attribute(:task_orders, old_tasks << id)
  end
end
