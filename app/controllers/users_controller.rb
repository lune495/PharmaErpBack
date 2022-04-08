class UsersController < ApplicationController
    
    before_action :set_produit, only: [:show, :update, :destroy]


    def index
        @users = User.all
        render json: @users
    end

    # GET /users/1
    def show
        render json: @user
    end

    def new
        @user = User.new
    end



    def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username,:email,:firstname,:lastname,:password_digest,:password_confirmation,:role_id)
    end
end