class StoriesController < ApplicationController
     before_action :redirect_if_not_logged_in

    def index 
        @stories = Story.all         
    end 
    
    def new 
        @story = Story.new 
    end 
    
    def create 
        # byebug 
        @story = current_user.stories.build(story_params)      
        @story.save 
        redirect_to stories_path
    end 
    
    def show 

    end 

    def edit 
        @story = Story.find(params[:id])
    end 

    def update 

    end 

    def delete 

    end 

    private 
    
    def story_params
        params.require(:story).permit(:title, :description)
    end 

end
