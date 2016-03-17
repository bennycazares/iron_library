class SessionController < ApplicationController
  def new
  end
  def create
   email = params[:email]
   password = params[:password]

   user = User.find_by email: email
   if user && user.authenticate(password)
     session[:user_id] = user.id
     redirect_to root_path
   else
     flash.now[:alert] = "Something is wrong with your email or password"
     render :new
 end
end

 def delete
   session.delete :user_id
   redirect_to root_path
 end
end

#   def create
#     # get the object
#     passcode = params[:passcode]
#     # set the values
#     if passcode == "yolo"
#       session[:passcode] = true
#       redirect_to recipes_path
#     else
#       render :new
#     end
#     # redirect if we save
#   end
#
#   def delete
#     session[:passcode] = nil
#     redirect_to root_path
#   end
# end
