class Api::V1::BoardsController < ApplicationController
  def index
    render json: BoardResource.new(Board.first).serializable_hash
  end
end
