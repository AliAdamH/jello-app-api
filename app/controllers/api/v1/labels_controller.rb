class Api::V1::LabelsController < ApplicationController


  def index
    @labels = Label.all.where(board: Board.last)
    if @labels
      render json: LabelResource.new(@labels)
    else
      render json: { status: 404 }
    end
  end

  def create
    @label = Label.new(
      name: params[:label][:name],
      color: params[:label][:color],
      board_id: params[:label][:board_id]
    )
    if @label.save
      render json: LabelResource.new(@label).serializable_hash
    else
      render json: { status: 500 }
    end
  end

  def update
    @label = Label.find(params[:label][:id])
    if @label&.update(name: params[:label][:name], color: params[:label][:color])
      head 204
    else
      head 422
    end
  end

  def destroy
    @label = Label.find(params[:label][:id])
    if @label
      @label.destroy
      head 204
    else
      head 422
    end
  end
end
