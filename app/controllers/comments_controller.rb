class CommentsController < ApplicationController

    def index        
        @comments = Comment.all              
    end 
    
    def new 
       @comment = Comment.new 
       @story = Story.find_by(id: params[:id])
        # if params[:story_id] && Story.find_by_id(params[:story_id])
        #      @comment = @story.comments.build
        #     @comment.build_story
        # else
        #     @comment = Comment.new 
        #     @comment.build_story 
        # end 
    end 
    
    def create
        @comment = current_user.stories.build(comment_params)      
        if @comment.save 
            redirect_to comments_path 
        else 
            render :new        
        end 
    end 
    
    def show 
        @comment = Comment.find_by(id: params[:id])
    end 

    def edit 
        
    end 

    def update 

    end 

    def delete    
    
    end
    
    private

    def comment_params
        params.require(:comment).permit(:reviews, :user_id, :story_id) 
    end 

end
