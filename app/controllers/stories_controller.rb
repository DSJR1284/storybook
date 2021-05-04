class StoriesController < ApplicationController
    # before_action :redirect_if_not_logged_in

    def index 
        @stories = Story.all         
    end 
    
    def new 
        @story = Story.new 
    end 
    
    def create 
        @story = Story.new 
        @story.title = params[:title]
        @story.description = params[:description]       
        @story.save 
        binding.pry 
        redirect_to stories_path(@story)
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
