class User < ApplicationRecord
    has_many :comments # the comments left on logged in users stories 
    # current_user.comments => all the comments other users have left on their story
    
    has_many :stories, through: :comments # stories that user authored 
    # current_user.stories => return the logged in users authored stories 

    # has_many :authored_comments, class_name: :comments, foreign_key => :user_id # the comments a user has left on other stories    
    # current_user.authored_comments.build => create a new comment for logged in user 
    # current_user.authored_comments => return the comments that logged in user has left 

    # has_many :commented_stories, through: :authored_comments, class_name: :stories, foreign_key => :user_id # return the stories that a user has commented on # current_user.commented_stories => return all stories logged in user has commented on
    # current_user.commented_stories.build => a new comment on someone elses story that logged in use is leaving

    has_secure_password

end


# user is going to be associated with comments in 2 ways:
# authored comments
# received comments 
# you're going need to alias comments association 
