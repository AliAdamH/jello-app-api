class ColumnResource
  include Alba::Resource

  root_key :column, :columns

  collection_key :id

  attributes :task_orders, id:[String, true], title: [String, true]

  transform_keys :lower_camel

  many :tasks, resource: TaskResource
end