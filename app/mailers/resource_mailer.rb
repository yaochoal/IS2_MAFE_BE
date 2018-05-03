class ResourceMailer < ApplicationMailer


    def new_resource(resource)

        @resource = resource
        @user = User.find(resource.user_id)
        @url = 'http://localhost:3001'
 
        mail(to: @user.email , subject: 'Aviso nuevo recurso agregado')
    end
end
