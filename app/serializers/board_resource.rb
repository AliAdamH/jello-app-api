class BoardResource
  include Alba::Resource

  root_key :board, :boards

  attributes :id, :title, :col_order_ids

  transform_keys :lower_camel

  many :columns, resource: ColumnResource
end