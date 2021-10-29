class GundamModelController < ApplicationController
  def index
    @gundam_models = GundamModel.where(nil)
    if params[:attr].eql? "Nome"
      @gundam_models = @gundam_models.filter_by_name_like(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Ano"
      @gundam_models = @gundam_models.filter_by_ano(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Qualidade"
      @gundam_models = @gundam_models.filter_by_qualidade(params[:value]) if params[:value].present?
    else
      @gundam_models
    end
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
    @gundam_model = GundamModel.new
  end
  def create
    @gundam_model = GundamModel.new

    if @gundam_model.save
      redirect_to @gundam_model
    else
      render :new
    end
  end
  def save
  end

  def edit
  end
end
