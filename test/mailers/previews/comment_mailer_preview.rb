# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview

    def new_comment
        user = User.create(username:'wer', email:'hsmartineza@hotmail.com', password:'1234', password_confirmation: '1234')

        CommentMailer.new_comment(user,Comment.first)
    end

end
