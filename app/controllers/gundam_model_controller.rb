class GundamModelController < ApplicationController
  def index
    @gundam_models = GundamModel.all
  end

  def show
    @gundam = GundamModel.find(params[:id])
  end

  def new
  end

  def edit
  end

  def _form
  end
end
