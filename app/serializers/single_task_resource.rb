class SingleTaskResource
  include Alba::Resource

  transform_keys :lower_camel

  many :labels, resource: LabelResource

  attributes :title, :description, :due_date, :due_date_status, :cover_color, :cover_text_color, column_id: [String, true], id: [String, true]
end
