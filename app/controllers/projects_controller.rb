class ProjectsController < ApplicationController
	protect_from_forgery
	
	def signin
		
	end

	def newuser
		@newuser = Testuser.new

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

	def adduser

		@adduser = Testuser.new
		@adduser.first_name = params[:firstname]
		@adduser.last_name = params[:lastname]
		@adduser.institution = params[:institution]
		@adduser.email = params[:emailid]
		@adduser.password = params[:password]
		@adduser.role = params[:role]

		if 	
			@adduser.save()
			redirect_to :action => 'current_Users'

		end

	end

	def addinguser
		
	end

	def new_user
		
	end

	def loggedin
		@r_email = params[:email]
		@r_password = params[:password]

		@c_email = Testuser.find_by_email(@r_email)
		@c_password = Testuser.find_by_password(@r_password)

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

	def show
		@list = Testuser.all
	end

	def addrole
		
	end

	def addgadget
		
	end

	def destroy
		if Testuser.find(params[:id]).destroy()
			render :action => 'show'
		end
	end
end
