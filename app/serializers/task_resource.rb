class TaskResource
  include Alba::Resource

  root_key :task, :tasks

  collection_key :id

  transform_keys :lower_camel

  attributes :title, :description, column_id: [String ,true],  id: [String, true]

end