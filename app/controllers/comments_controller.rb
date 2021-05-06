class CommentsController < ApplicationController

    def index        
        @comments = Comment.all              
    end 
    
    def new 
       @comment = Comment.new 
       @story = Story.find_by(id: params[:id])       
    end 
    
    def create
        @comment = current_user.stories.build(comment_params)      
        if @comment.save 
            redirect_to story_path 
        else 
            render new_story_comment_path      
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
