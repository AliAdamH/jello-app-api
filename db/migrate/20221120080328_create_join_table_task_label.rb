class CreateJoinTableTaskLabel < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tasks, :labels do |t|
      # t.index [:task_id, :label_id]
      # t.index [:label_id, :task_id]
    end
  end
end
