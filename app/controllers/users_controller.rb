class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
        @users = User.alpha 
    end 

    def new        
        if !logged_in?
            @user = User.new
        else            
            redirect_to stories_path
        end
    end 

    def create 
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to stories_path
        else
            flash[:message] = " Invlaid Credentials Please try again." 
            render new_user_path 
        end
    end

    private 
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
    end     
    
end
