# Preview all emails at http://localhost:3000/rails/mailers/resource_mailer
class ResourceMailerPreview < ActionMailer::Preview


    def new_resource
        user = User.create(username:'wer', email:'hsmartineza@hotmail.com', password:'1234', password_confirmation: '1234', career_id: 2)

        ResourceMailer.new_resource(Resource.first.user)
    end

end
