class FamillesController < ApplicationController
  before_action :set_famille, only: [:show, :update, :destroy]

  # GET /familles
  def index
    @familles = Famille.all

    render json: @familles
  end

  # GET /familles/1
  def show
    render json: @famille
  end

  # POST /familles
  def create
    @famille = Famille.new(famille_params)

    if @famille.save
      render json: @famille, status: :created, location: @famille
    else
      render json: @famille.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /familles/1
  def update
    if @famille.update(famille_params)
      render json: @famille
    else
      render json: @famille.errors, status: :unprocessable_entity
    end
  end

  # DELETE /familles/1
  def destroy
    @famille.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_famille
      @famille = Famille.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def famille_params
      params.require(:famille).permit(:nom)
    end
end
