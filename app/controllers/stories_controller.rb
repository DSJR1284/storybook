class StoriesController < ApplicationController
     before_action :redirect_if_not_logged_in
     before_action :story_user, only: [:edit, :update, :destory]

    def index
        if params[:user_id] 
            @user = User.find_by(id: params[:user_id])
            @stories = @user.stories.shelf
        else 
            @stories = Story.shelf 
        end         
    end 
    
    def new 
        @story = Story.new 
    end 
    
    def create 
        @story = current_user.stories.build(story_params)      
        if @story.save 
            redirect_to stories_path
        else 
            render :new 
        end 
    end 
    
    def show 
        story_id 
        @comments = @story.comments 
    end 

    def edit 
      story_id        
    end 

    def update           
        story_id
        @story.update(story_params)
         redirect_to stories_path        
    end 

    def destroy        
      story_id        
        @story.destroy
        redirect_to stories_path
    end 

    private 
    
    def story_params
        params.require(:story).permit(:title, :description, :user_id)
    end 

    def story_id
        @story = Story.find_by(id: params[:id])
    end 

    def story_user #correct user logged in (create edit update, destroy)
       story_id 
        unless current_user?(@story.user)
            redirect_to stories_path
         end 
    end 
end
