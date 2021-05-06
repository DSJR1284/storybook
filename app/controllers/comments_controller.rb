class CommentsController < ApplicationController

    def index        
        @comments = Comment.all              
    end 
    
    def new 
        @comment = Comment.new 
        @story = Story.find_by(id: params[:story_id])       
    end 
    
    def create

        # @comment = Comment.create(comment_params)
        # redirect_to story_path(@comment.story)
        @story = Story.find_by(id: params[:story_id])
        @comment = @story.comments.build(comment_params) 
        byebug     
        if @comment.save 
            redirect_to story_path(@story) 
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
