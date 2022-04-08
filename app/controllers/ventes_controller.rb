class VentesController < ApplicationController
  before_action :set_vente, only: [:show, :update, :destroy]

  # GET /ventes
  def index
    @ventes = Vente.all

    render json: @ventes, include: [:venteproduits, :produits]
  end

  # GET /ventes/1
  def show
    render json: @vente, include: [:venteproduits, :produits]
  end

  # POST /ventes
  def create
    @vente = Vente.new(vente_params)

    if @vente.save
      render json: @vente, status: :created, location: @vente
    else
      render json: @vente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ventes/1
  def update
    if @vente.update(vente_params)
      render json: @vente
    else
      render json: @vente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ventes/1
  def destroy
    @vente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vente
      @vente = Vente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vente_params
      params.require(:vente).permit(:montant,
                                    :qte,
                                    :montantencaisse,
                                    :monnaie,
                                    :user_id,
                                    venteproduits_attributes: [:id,:user_id,:produit_id,:vente_id,:_destroy])
    end
end
