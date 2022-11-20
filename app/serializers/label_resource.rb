class LabelResource
  include Alba::Resource

  root_key :label, :labels

  collection_key :id

  attributes :name, :color, id:[String, true], board_id: [String, true]

  transform_keys :lower_camel

end