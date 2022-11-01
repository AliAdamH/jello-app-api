class Api::V1::ColumnsController < ApplicationController

  def update_task_orders
    @column = Column.find(params[:column][:id]).update(task_orders: params[:column][:task_orders])
  end
end
