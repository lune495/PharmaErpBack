class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :update, :destroy]

  # GET /produits
  def index
    @produits = Produit.all

    render json: @produits, include: [:venteproduits, :ventes]
  end

  # GET /produits/1
  
  def show
    render json: @produit, include: [:venteproduits, :ventes]
  end

  # POST /produits
  def create
    @produit = Produit.new(produit_params)
    @produits = Produit.all
    @error = nil
     @produits.each do |p|
        if p.codebarre == params[:codebarre]
           @error = "".to_json
        end
         
     end
    if @error == nil
      if @produit.save
        render json: @produit, status: :created, location: @produit
      else
        render json: @produit.errors, status: :unprocessable_entity
      end
    else
      render json: {
      error: "Désole ce produit existe deja dans la base",
      status: 403
     }
    end
  end

  # PATCH/PUT /produits/1
  def update
    if @produit.update(produit_params)
      render json: @produit
    else
      render json: @produit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produits/1
  def destroy
    @produit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit
      @produit = Produit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produit_params
      params.require(:produit).permit(:codebarre, :nom,:limite, :pv, :qte,:user_id, :famille_id,:image)
    end
end