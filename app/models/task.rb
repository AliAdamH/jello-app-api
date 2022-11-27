class Task < ApplicationRecord
  belongs_to :column
  has_and_belongs_to_many :labels
  after_create :update_col_task_order
  before_destroy :remove_self_from_col_task_order
  enum due_date_status: {
    idle: 0,
    overdue: 1
  }

  def update_col_task_order
    old_tasks = column.task_orders
    column.update_attribute(:task_orders, old_tasks << id)
  end

  def remove_self_from_col_task_order
    column.task_orders.delete id
    column.save
  end
end
