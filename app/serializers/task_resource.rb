class TaskResource
  include Alba::Resource

  root_key :task, :tasks

  collection_key :id

  attributes :title, :description, id: [String, true]

end