class UsersController < ApplicationController
  
   def create
    user = User.create(user_params)
   end 


   private 

   def user_params
    params.permit(:username, :password)
   end 

end
