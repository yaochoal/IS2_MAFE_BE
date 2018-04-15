class GooglesController < ApplicationController
  
  def create
#eyJhbGciOiJSUzI1NiIsImtpZCI6IjNiNTQ3ODg2ZmY4NWEzNDI4ZGY0ZjYxZGI3M2MxYzIzOTgyYTkyOGUifQ.eyJhenAiOiI2MzI3NDUxOTMyODctdW9jY2IxaGhpMmZpMGxsam9mYzkxYjQ2M2wxZWZmZm4uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzI3NDUxOTMyODctdW9jY2IxaGhpMmZpMGxsam9mYzkxYjQ2M2wxZWZmZm4uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDk0MDU1NTEwNTg0MjkzMTU2NTMiLCJlbWFpbCI6ImFpbXVsdHJhdmlvbGVuY2VAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJwWXcwNlRaZ2h2VTEzb0hyOXNHSzFBIiwiZXhwIjoxNTIzNjc0NzY4LCJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwianRpIjoiZmQ5MGU5YjJkMTg3ZGE5MTJjNjZlYmZjM2IzOWY1MTQ3Yjg2YTI3YyIsImlhdCI6MTUyMzY3MTE2OCwibmFtZSI6Illlc2lkIE9jaG9hIiwicGljdHVyZSI6Imh0dHBzOi8vbGg2Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tTk16WS1wWFhDTmcvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUNMR3lXREtycnJnTUtlVW1FWHE3cFBvYkkzWlV3MU43US9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiWWVzaWQiLCJmYW1pbHlfbmFtZSI6Ik9jaG9hIiwibG9jYWxlIjoiZXMifQ.XDdQc6b6ezZUEsRD40h-0_rq1Hk9Gs8NSjH8ynzxcvi3f3eGpVIA66wsCfPJfFLmZoEGMzfvhr_WpjRkQgF56IXV3UkSjqcvUP4NFghdbKBbbbvLbMrLwUsYInqfznMooI0Usb4DbBtJbx5q8ty3T95Z7vZESxUQWkGwCeisMKqFHsINrAn-NkOvXJU1dlqiHsFL6Ro7Vvw3mlLvkdKeuWqR-I_25eK-0iofn-TaO6w90WUKdiZtgYvJO6Ld7XiNg8A_bXVYt-Yf3IOk1zqPdMY_Ha0vRMQD-mhLm4XqyLpWWl-dcfAEKWcttY1onZEdhg4-TrQuFjAtZQqoRtAajg
    #@users = User.all
    #render json: @users 
     #body = Test.information("eyJhbGciOiJSUzI1NiIsImtpZCI6IjNiNTQ3ODg2ZmY4NWEzNDI4ZGY0ZjYxZGI3M2MxYzIzOTgyYTkyOGUifQ.eyJhenAiOiI2MzI3NDUxOTMyODctdW9jY2IxaGhpMmZpMGxsam9mYzkxYjQ2M2wxZWZmZm4uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzI3NDUxOTMyODctdW9jY2IxaGhpMmZpMGxsam9mYzkxYjQ2M2wxZWZmZm4uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTUyOTc1ODQ0NDUwNjA3MjA4MTAiLCJoZCI6InVuYWwuZWR1LmNvIiwiZW1haWwiOiJ5YW9jaG9hbEB1bmFsLmVkdS5jbyIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoibTZBTl80SGpGUEZsSG9iZzZCazg4dyIsImV4cCI6MTUyMzY4MDc2NiwiaXNzIjoiYWNjb3VudHMuZ29vZ2xlLmNvbSIsImp0aSI6IjU4YTMzNGM1ZTBmN2Q0NjJiOGE2ZTI2YjMxZTU4OTg3NTA1YjNhMzIiLCJpYXQiOjE1MjM2NzcxNjYsIm5hbWUiOiJZZXNpZCBBbGJlcnRvIE9jaG9hIEx1cXVlIiwicGljdHVyZSI6Imh0dHBzOi8vbGg0Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8ta1RNbkJGV1NCMzAvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUNMR3lXQjBBWENibUd4Yy1ZeTR1NlExU3ZicUtfazRyUS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiWWVzaWQgIEFsYmVydG8iLCJmYW1pbHlfbmFtZSI6Ik9jaG9hICBMdXF1ZSJ9.b3bDxkrXzCr3TA-DFivlfV8bsWSuuWsFMjPNZitHEULbgn_VAzYPRaXEuqo8YWHAq7b5jjvEQVdbOcAjKK8YDQa0BM8hz6s72Y4OkSGG52CfaA73dETn1bbBPwQpC80NDS01BSluJcbiQUDp9wZXE-IbwNlN-2_Ec1ZbLFxULSAc0J91ZfJkBJwK2D__UwEX7k0PuIvjnsgD91QaQS6fKmnS6Ph13IirhpnTdFnmDHXM_qC03R6J0N4pmvFF-JiTsTND3HK9mpYKwv6FoHGwvFJ_97sUTUixuiBQL863I_6iVsKq4nIMwMi38_f8zfYGmwck43A2q3Gh25_ikyvsiQ")
     body = Google.information(params[:token])
     body = JSON.parse(body) 
     @user = User.search(body["email"])
     
     if @user == []
     	puts params[:token]
     	#puts body
     	#puts "noexiste"
     	p = Faker::Internet.password(8)
     	@user = User.create(username: body["name"],email: body["email"],avatar:body["picture"], password: p, password_confirmation: p, password1: p)
     	if @user.save
      #Tell the UserMail to send a welcome email after save
        UserMailer.welcome_mail(@user).deliver_now
        render json: @user
      	else
        render json: body
   		 end
     else
     	render json: @user
     	#puts "existe"
     end
     #render json: 
     #render json: user
  end

 
end