class MagasinsController < ApplicationController
  before_action :set_magasin, only: [:show, :update, :destroy]

  # GET /magasins
  def index
    @magasins = Magasin.all

    render json: @magasins
  end

  # GET /magasins/1
  def show
    render json: @magasin
  end

  # POST /magasins
  def create
    @magasin = Magasin.new(magasin_params)

    if @magasin.save
      render json: @magasin, status: :created, location: @magasin
    else
      render json: @magasin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /magasins/1
  def update
    if @magasin.update(magasin_params)
      render json: @magasin
    else
      render json: @magasin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /magasins/1
  def destroy
    @magasin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magasin
      @magasin = Magasin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def magasin_params
      params.require(:magasin).permit(:stock, :pa, :limite, :produit_id)
    end
end
