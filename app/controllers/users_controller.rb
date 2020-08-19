class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	# SHOW ALL USERS LIST
	def index
		@user = User.all
	end

	# def show
		
	# end
	# OPEN PAGE FOR ADD NEW USER 
	def new
		@user = User.new
	end
	
	# CREATE A NEW USER
	def create
		@user = User.create(user_params)
		if @user.save
			redirect_to users_path, message: "The user is successfully registered"
		else
			flash.now[:error] = "Could not save User"
			render "new"
		end
	end
	
	# OPEN PAGE FOR EDIT USER
	def edit
	end
	
	# UPDATE EDIT USER
	def update
		if @user.update(user_params)
			redirect_to users_path, notice: "The user is successfully Updated"
		else
			render action: "edit"
		end
	end

	# DELETE USER
	def destroy
		if @user.destroy
			redirect_to user_path, notice: "The user is successfully Deleted"
		end
	end

	# def show
	# 	byebug
	# end
	
	# Private method 
	private
		def set_user
	  	@user = User.find(params[:id]) 
	  end

		def user_params
			params.require(:user).permit(:username, :email, :dob, :address, :phone)
		end

end
