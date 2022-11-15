class Api::V1::TasksController < ApplicationController


  def create
    @task = Task.new(column_id: params[:task][:column_id], title: params[:task][:title])
    if @task.save
      render json: TaskResource.new(@task).serializable_hash
    else
      render json: { status: 500 }
    end
  end

  def move
    from_col, to_col = Column.find([params[:from_col][:id], params[:to_col][:id]])
    @task = Task.find(params[:id])
    @task.update(column: to_col)
    from_col.update(task_orders: params[:from_col][:task_orders])
    to_col.update(task_orders: params[:to_col][:task_orders])
  end


  def show
    @task = Task.find(params[:id])
    if @task
      render json: TaskResource.new(@task).serializable_hash
    else
      render json: { status: 404 }
    end
  end

end