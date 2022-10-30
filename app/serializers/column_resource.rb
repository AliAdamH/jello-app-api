class ColumnResource
  include Alba::Resource

  root_key :column, :columns

  attributes :id, :title, :task_orders

  many :tasks, resource: TaskResource
end