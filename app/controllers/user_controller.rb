class UserController < ApplicationController

	protect_from_forgery

	def signin
		
	end

	def newuser
		@newuser = Webmodel.new

		@newuser.first_name = params[:firstname]
		@newuser.last_name = params[:lastname]
		@newuser.institution = params[:institution]
		@newuser.email = params[:email]
		@newuser.password = params[:password]
		
		if
			@newuser.save()
			redirect_to :action => 'signin' 
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def new_user
		
	end

	def loggedin
		@r_email = params[:user][:email]
		@r_password = params[:user][:password]

		@c_email = Webmodel.find_by_email(@r_email)
		@c_password = Webmodel.find_by_password(@r_password)

		if @c_email.nil? or @c_password.nil?
			flash[:notice] = "Entered Email-Id/Password is Invalid"
			redirect_to :action => 'signin'
		else
			#redirect_to :action => 'loggedin'
			flash[:notice] = "Hi, You Are LoggedIn Successfully......!"
			render :action => 'loggedin'
		end
	end

	def signout
			flash[:notice] = "You Are Logged-Out Successfully"
			render :action => "signout"
	end

	def contact
		
	end

	def current_Users
		
	end

	def user_Roles
		
	end

	def gadget_Inventory
		
	end
end
