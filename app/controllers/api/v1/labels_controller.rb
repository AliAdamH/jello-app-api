class Api::V1::LabelsController < ApplicationController

  def update
    @label = Label.find(params[:label][:id])
    if @label&.update(name: params[:label][:name], color: params[:label][:color])
      head 204
    else
      head 422
    end
  end
end
