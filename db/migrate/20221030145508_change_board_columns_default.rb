class ChangeBoardColumnsDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :boards, :col_order_ids, from: nil, to: []
  end
end
