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
      @gundam_models = GundamModel.all
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
    @gundam = GundamModel.new
  end
  def create
    @gundam = GundamModel.new(params)

    if @gundam.save
      redirect_to @gundam
    end

  end
  private
    def gundam_model_params
      params.require(:gundam_model).permit(:nome,:qualidade,:ano,:escala,:serie,:imagem)
    end
end
