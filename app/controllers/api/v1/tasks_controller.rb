class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Board.find(params[:board]).tasks.includes(:labels)
    if @tasks
      render json: TaskResource.new(@tasks).serializable_hash
    else
      render json: {status: 404}
    end
  end

  def create
    @task = Task.new(column_id: params[:task][:column_id], title: params[:task][:title])
    if @task.save
      render json: TaskResource.new(@task).serializable_hash
    else
      render json: {status: 500}
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
      render json: SingleTaskResource.new(@task).serializable_hash
    else
      render json: {status: 404}
    end
  end

  def update
    @task = Task.find(params[:task][:id])
    if @task.update(title: params[:task][:title],
      description: params[:task][:description],
      cover_color: params[:task][:coverColor],
      cover_text_color: params[:task][:coverTextColor],
      due_date: params[:task][:dueDate],
      due_date_status: params[:task][:dueDateStatus])
      head 204
    else
      render json: {status: 500}
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task
      @task.destroy
      head 204
    else
      head 422
    end
  end
end
