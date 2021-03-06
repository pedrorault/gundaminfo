class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]

  # GET /toys
  def index
    @toys = Toy.where(moderado: true)
    if params[:attr].eql? "Nome"
      @toys = @toys.filter_by_name_like(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Ano"
      @toys = @toys.filter_by_ano(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Qualidade"
      @toys = @toys.filter_by_qualidade(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Escala"
      @toys = @toys.filter_by_escala(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Série"
      @toys = @toys.filter_by_serie(params[:value]) if params[:value].present?
    else
      @toys = Toy.where(moderado: true)
    end

  end

  # GET /toys/1
  def show
  end

  # GET /toys/new
  def new
    @toy = Toy.new
  end

  # GET /toys/1/edit
  def edit
  end

  # POST /toys
  def create
    @toy = Toy.new(toy_params)

    if @toy.save
      redirect_to @toy, notice: 'Toy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /toys/1
  def update
    if @toy.update(toy_params)
      redirect_to @toy, notice: 'Toy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /toys/1
  def destroy
    @toy.destroy
    redirect_to toys_url, notice: 'Toy was successfully destroyed.'
  end
  
  def compare_select
  end

  def compare
    if params[:item1].present? && params[:item2].present?
      @item1 = Toy.find(params[:item1])
      @item2 = Toy.find(params[:item2])
    else
      render :compare_select
    end
  end

  def moderar 
    @toys = Toy.where(moderado: false)
  end

  def change_moderado
    @toy = Toy.find(params[:id])
    @toy.update(moderado: true)
    redirect_to :moderacao
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_params
      params.require(:toy).permit(:nome, :qualidade, :ano, :escala, :serie, :imagem)
    end
end
