class AddCoverTextColorToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :cover_text_color, :string, default: '#000000'
  end
end
