class TaskResource
  include Alba::Resource

  root_key :task, :tasks

  attributes :id, :title, :description

end