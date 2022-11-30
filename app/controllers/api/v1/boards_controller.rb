class Api::V1::BoardsController < ApplicationController
  def index
    @board = Board.includes(columns: {tasks: :labels}).last
    render json: BoardResource.new(@board).serializable_hash
  end

  def update_column_order
    @board  = Board.find(params[:board][:id]).update(col_order_ids: params[:board][:col_order_ids])
  end
end
