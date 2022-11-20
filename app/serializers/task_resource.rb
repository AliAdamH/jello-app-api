class TaskResource
  include Alba::Resource

  root_key :task, :tasks

  collection_key :id

  transform_keys :lower_camel

  many :labels, resource: LabelResource

  attributes :title, :description, :cover_color, :cover_text_color, column_id: [String ,true],  id: [String, true]

end