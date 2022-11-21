class Api::V1::TaskLabelsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @label = Label.find(params[:label_id])
    if @task && @label
      @task.labels << @label
      head 204
    else
      render json: { status: 500 }
    end
  end
end
