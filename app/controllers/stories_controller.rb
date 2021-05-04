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
        

    end 

    def edit 

    end 

    def update 

    end 



end
