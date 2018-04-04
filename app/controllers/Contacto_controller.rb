class Contactocontroller < ApplicationController
def create
 @contacto = Contacto.new(params[:contact][:data])
 name = params[:contacto][:data][:name]
 @contacto.request = request
 if @contacto.deliver
   render json: {message: “Thank you for your Email, #                            {name.capitalize}. I will get back to you shortly!”}
 else
   render json: {message: ‘Error occured. Please try again!’}
 end
end
end