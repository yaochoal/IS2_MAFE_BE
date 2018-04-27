class SocialsController < ApplicationController
  
 

  def create
   # puts params
     @user = User.search(params["email"])[0]
    
    if @user == nil
        p = Faker::Internet.password(8)
        @user = User.create(username: params["name"],email: params["email"],
        avatar:params["avatar"], password: p, password_confirmation: p, password1: p)
        if @user.save
            knock_token = Knock::AuthToken.new payload: { sub: @user.id }
            render json:  knock_token     
        else
           
        end
    else
     knock_token = Knock::AuthToken.new payload: { sub: @user.id }
    render json:  knock_token
    end
   
   
  end

 
end
