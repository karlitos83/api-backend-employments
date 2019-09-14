class UsersController < ApplicationController
  #before_action :authenticate_user
  #before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    if current_user.admin?
      @users = User.all

      render json: @users
    end
  end

  # GET /users/1
  def show
      @user = User.select("users.id, name, email, entry_at, departure_at")
      .joins(:work_days).where(params[:id])
      render json: @user
  end

  # POST /users
  def create
    if current_user.admin?
      @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    if current_user.admin?
      @user = User.find params[:id]
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /users/1
  def destroy
    if current_user.admin?
      User.destroy(params[:id])
      #@user.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
    end
end
