class BoardResource
  include Alba::Resource

  root_key :board, :boards

  attributes :id, :title, :col_order_ids

  many :columns, resource: ColumnResource
end