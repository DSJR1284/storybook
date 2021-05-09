module ApplicationHelper
    
    def logged_in?
        current_user 
    end 
    
    def current_user 
        @current_user ||= User.find_by(id: session[:user_id])
    end 

    def current_user?(user) 
        user == current_user
    end 

    def redirect_if_not_logged_in
        redirect_to root_path if !logged_in? 
    end 
    
end
