class SessionsController < ApplicationController
  

    def new 
        if logged_in?
            redirect_to users_path
        end 
    end 

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to users_path
        else
            flash[:message] = "Invlaid Credentials Please try again."         
            render :new 
        end
    end 

    def omniauth 
        user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |a|          
            a.first_name = request.env['omniauth.auth'][:info][:first_name]
            a.last_name = request.env['omniauth.auth'][:info][:last_name]
            a.username = request.env['omniauth.auth'][:info][:name]
            a.email = request.env['omniauth.auth'][:info][:email]
            a.password = SecureRandom.hex(12)
        end  
           
        if user.valid? 
            session[:user_id] = user.id
            redirect_to users_path
        else 
            redirect_to root_path
        end 
    end 

    def logout
        session.delete :user_id
        redirect_to root_path 
    end 

end
