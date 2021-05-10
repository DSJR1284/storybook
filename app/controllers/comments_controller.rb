class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :comment_user, only: [:edit, :update, :destory]
    
    def index
        if params[:story_id] 
            @story = Story.find_by_id(params[:story_id])
            @comments = @story.comments
        else
            @comments = Comment.all 
        end         
    end 
    
    def new 
        @comment = Comment.new 
        @story = Story.find_by(id: params[:story_id])       
    end 
    
    def create        
        @story = Story.find_by(id: params[:story_id])
        @comment = @story.comments.build(comment_params)     
        if @comment.save 
            redirect_to story_comments_path(@story) 
        else 
            render :new     
        end 
    end      

    def edit 
        comment_id
        #  @comment = Comment.find(id: params[:id]) 
    end 

    def update 
        comment_id 
        @comment.update(comment_params)
        redirect_to story_comments_path(@comment.story_id)        
    end 

    def delete            
        comment_id 
        @comment.destroy(comment_params)
        redirect_to comments_path
    end
    
    private

    def comment_params
        params.require(:comment).permit(:reviews, :user_id, :story_id) 
    end

    def comment_id
        @comment = Comment.find_by(id: params[:id])
    end 

    def comment_user 
         @comment = Comment.find_by(id: params[:id])
          unless current_user?(@comment.user_id)
         end              
    end 
end
