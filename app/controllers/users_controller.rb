class UsersController < ApplicationController
 # GET /users
 # GET /users.json
 def index
   @users = User.all
 end

 # GET /users/1
 # GET /users/1.json
 def show
  @user = User.find(params[:id])
 end

 private
   # Never trust parameters from the scary internet, only allow the white list through.
   def user_params
     params.require(:user).permit(:name, :bsc_number, :msc_number, :phd_number, :email, :identity_card, :phone, :address, :birth_date, :membership, :paid, :responsible_id)
   end
end
