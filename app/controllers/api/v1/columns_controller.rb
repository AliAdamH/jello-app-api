class Api::V1::ColumnsController < ApplicationController

  def create
    @column = Column.new(
      title: params[:column][:title],
      board_id: params[:column][:board_id]
    )
    
    if @column.save
      render json: ColumnResource.new(@column).serializable_hash
    else
      render json: { status: 500 }
    end
  end

  def update_task_orders
    @column = Column.find(params[:column][:id]).update(task_orders: params[:column][:task_orders])
  end
end
