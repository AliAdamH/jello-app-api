class Task < ApplicationRecord
  belongs_to :column
  has_and_belongs_to_many :labels
  after_create :update_col_task_order
  # before_update :set_due_date_status, if: :will_save_change_to_due_date?

  enum due_date_status: {
    idle: 0,
    overdue: 1
  }

  def update_col_task_order
    old_tasks = column.task_orders
    column.update_attribute(:task_orders, old_tasks << id)
  end

  # def set_due_date_status
  #   # for some reason active record did not allow idle!
  #   self.due_date_status = 'idle'
  # end
end
