class GundamModelController < ApplicationController
  def index
    @gundam_models = GundamModel.where(nil)
    @gundam_models = @gundam_models.filter_by_name_like(params[:name]) if params[:name].present?
  end

  def show
    @x = GundamModel.find_by_id(params[:id])
    if @x.present?
      @gundam = @x
    else
      render :index
    end
  end

  def new
  end

  def edit
  end

  def _form
  end
end
