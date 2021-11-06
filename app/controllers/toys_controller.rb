class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]

  # GET /toys
  def index
    @toys = Toy.all
    if params[:attr].eql? "Nome"
      @toys = @toys.filter_by_name_like(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Ano"
      @toys = @toys.filter_by_ano(params[:value]) if params[:value].present?
    elsif params[:attr].eql? "Qualidade"
      @toys = @toys.filter_by_qualidade(params[:value]) if params[:value].present?
    else
      @toys = Toy.all
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_params
      params.require(:toy).permit(:nome, :qualidade, :ano, :escala, :serie)
    end
end
