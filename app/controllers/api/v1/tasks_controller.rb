class Api::V1::TasksController < ApplicationController


  def move
    from_col, to_col = Column.find([params[:from_col][:id], params[:to_col][:id]])
    @task = Task.find(params[:id])
    @task.update(column: to_col)
    from_col.update(task_orders: params[:from_col][:task_orders])
    to_col.update(task_orders: params[:to_col][:task_orders])
  end

end