class UserController < ApplicationController

	protect_from_forgery

	def signin
		
	end
	def newuser
		@newuser = Webmodel.new

		@newuser.email = params[:firstname]
		@newuser.last_name = params[:lastname]
		@newuser.first_name = params[:email]
		@newuser.password = params[:password]
		@newuser.institution = params[:institution]

		if
			@newuser.save()
			redirect_to :action => 'signin' 
			#flash[:notice] = "You signed up successfully"

		end



	end


	def new_user
		
		
	end

	
	def loggedin
		
	
	end


	def user_check
		
		@email = params[:email]
		password = param[:password]
		
		semail= find_by_email(@email)
		spwd = find_by_password(@password)

	end

end
