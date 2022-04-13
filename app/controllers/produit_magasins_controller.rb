class ProduitMagasinsController < ApplicationController
  before_action :set_produit_magasin, only: [:show, :edit, :update, :destroy]

  # GET /produit_magasins
  def index
    @produit_magasins = ProduitMagasin.all
  end

  # GET /produit_magasins/1
  def show
  end

  # GET /produit_magasins/new
  def new
    @produit_magasin = ProduitMagasin.new
  end

  # GET /produit_magasins/1/edit
  def edit
  end

  # POST /produit_magasins
  def create
    @produit_magasin = ProduitMagasin.new(produit_magasin_params)

    if @produit_magasin.save
      redirect_to @produit_magasin, notice: 'Produit magasin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /produit_magasins/1
  def update
    if @produit_magasin.update(produit_magasin_params)
      redirect_to @produit_magasin, notice: 'Produit magasin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /produit_magasins/1
  def destroy
    @produit_magasin.destroy
    redirect_to produit_magasins_url, notice: 'Produit magasin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit_magasin
      @produit_magasin = ProduitMagasin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produit_magasin_params
      params.require(:produit_magasin).permit(:qte, :produit_id, :magasin_id)
    end
end
