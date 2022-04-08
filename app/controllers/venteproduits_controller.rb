class VenteproduitsController < ApplicationController
  before_action :set_venteproduit, only: [:show, :update, :destroy]

  # GET /venteproduits
  def index
    @venteproduits = Venteproduit.all

    render json: @venteproduits
  end

  # GET /venteproduits/1
  def show
    render json: @venteproduit
  end

  # POST /venteproduits
  def create
    @venteproduit = Venteproduit.new(venteproduit_params)

    if @venteproduit.save
      render json: @venteproduit, status: :created, location: @venteproduit
    else
      render json: @venteproduit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venteproduits/1
  def update
    if @venteproduit.update(venteproduit_params)
      render json: @venteproduit
    else
      render json: @venteproduit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /venteproduits/1
  def destroy
    @venteproduit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venteproduit
      @venteproduit = Venteproduit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def venteproduit_params
      params.require(:venteproduit).permit(:produit_id, :vente_id, :qte)
    end
end
