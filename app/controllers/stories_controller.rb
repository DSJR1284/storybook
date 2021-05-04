class StoriesController < ApplicationController
    # before_action :redirect_if_not_logged_in

    def show 

    end 

    def new 
        @story = Story.new 
    end 

    def index 
        @stories = Story.all 
    end 

    def create 
        @story = Story.new 
        @story.title = params[:title]
        @story.description = params[:description]
        @story.save 
        redirect_to stories_path(@story)
    end 

    def edit 
        @story = Story.find(params[:id])
    end 

    def update 

    end 

    def destroy

    end 

    private 
    
    def story_params
        params.require(:story).permit(:title, :description)
    end 




end
