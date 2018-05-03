class UsersController < ApplicationController
  
  before_action :authenticate_user, only: [:index,:show, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = current_user
    render json: @users
  end
  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
      #Tell the UserMail to send a welcome email after save
        UserMailer.welcome_mail(@user).deliver_now
        render json: @user, status: :created, location: @user 
      else
        render json: @user.errors, status: :unprocessable_entity 
    end
  end
end

  # PATCH/PUT /users/1
  def update
    if(params[:base64])
      
      @user.image = params[:base64]
      @user.save
     @user.avatar = "http://localhost:3000"+ @user.image.thumb.url
      @user.save
      puts @user.avatar
    else
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
    
    
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password, :email, :avatar,:image)
    end
end
