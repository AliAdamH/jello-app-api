class Api::V1::BoardsController < ApplicationController
  def index
    render json: BoardResource.new(Board.last).serializable_hash
  end

  def update_column_order
    @board  = Board.find(params[:board][:id]).update(col_order_ids: params[:board][:col_order_ids])
  end
end
