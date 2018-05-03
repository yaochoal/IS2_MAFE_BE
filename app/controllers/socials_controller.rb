class SocialsController < ApplicationController
  
  def index
    

  end
  def show
    user = User.find(params[:id])
    knock_token = Knock::AuthToken.new payload: { sub: user.id }
    render json:  knock_token
  end

  def create
   # puts params
     @user = User.search(params["email"])[0]
    
    if @user == nil
        p = Faker::Internet.password(8)
        @user = User.create(username: params["name"],email: params["email"],
        avatar:params["avatar"], password: p, password_confirmation: p, password1: p)
        if @user.save
            UserMailer.welcome_mail(@user).deliver_now
            render json: @user
        else
           
        end
    else
        render json: @user
    end

  end

 
end