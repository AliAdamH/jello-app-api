class Api::V1::BoardsController < ApplicationController
  def index
    render json: BoardResource.new(Board.last).serializable_hash
  end
end
