class CommentMailer < ApplicationMailer

    def new_comment(user, comment)
        @comment = comment
        @user = user
        @url = 'http://localhost:3001'
        mail(to: @user.email, subject: 'Confirmacion nuevo comentario realizado')
    end

end
