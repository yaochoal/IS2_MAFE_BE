class ResourceMailer < ApplicationMailer


    def new_resource(resource)
        @resource = resource
        themes = @resource.themes
        @courses = themes.course
        @careers = @courses.careers
        @users = @careers.users
        @recipients = @users
        @url = 'http://localhost:3001'
        emails = @recipients.collect(&:email).join(",")
        mail(to: emails, subject: 'Aviso nuevo recurso agregado')
    end
end
