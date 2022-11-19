class ChangeCoverColorDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :cover_color, from: nil, to: '#ffffff'
  end
end
