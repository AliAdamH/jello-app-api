class AddCoverColorToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :cover_color, :string
  end
end
