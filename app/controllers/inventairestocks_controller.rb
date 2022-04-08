class InventairestocksController < ApplicationController
  before_action :set_inventairestock, only: [:show, :update, :destroy]

  # GET /inventairestocks
  def index
    @inventairestocks = Inventairestock.all

    render json: @inventairestocks
  end

  # GET /inventairestocks/1
  def show
    render json: @inventairestock
  end

  # POST /inventairestocks
  def create
    @inventairestock = Inventairestock.new(inventairestock_params)

    if @inventairestock.save
      @produit = Produit.find(@inventairestock.produit.id)
      @produit.qte = @produit.qte + @inventairestock.quantite
      @produit.save
      render json: @inventairestock, status: :created, location: @inventairestock
    else
      render json: @inventairestock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventairestocks/1
  def update
    if @inventairestock.update(inventairestock_params)
      @produit = Produit.find(@inventairestock.produit.id)
      @produit.qte = @produit.qte - @inventairestock.quantite
      @produit.save
      render json: @inventairestock
    else
      render json: @inventairestock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventairestocks/1
  def destroy
    @inventairestock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventairestock
      @inventairestock = Inventairestock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inventairestock_params
      params.require(:inventairestock).permit(:produit_id, :quantite)
    end
end
