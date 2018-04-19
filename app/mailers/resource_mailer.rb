class ResourceMailer < ApplicationMailer


    def new_resource(resource)
        @resource = resource
        @user = @resource.user
        @url = 'http://localhost:3001'
 
        mail(to: @user.email , subject: 'Aviso nuevo recurso agregado')
    end
end
