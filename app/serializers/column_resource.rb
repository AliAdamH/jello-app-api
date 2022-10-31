class ColumnResource
  include Alba::Resource

  root_key :column, :columns

  collection_key :id

  attributes :task_orders, id:[String, true], title: [String, true]

  many :tasks, resource: TaskResource
end