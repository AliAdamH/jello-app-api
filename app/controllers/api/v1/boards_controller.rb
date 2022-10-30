class Api::V1::BoardsController < ApplicationController
  def index
    render json: { hello: 'there' }
  end
end
