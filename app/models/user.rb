class User < ApplicationRecord
    
    validates :first_name, :last_name, presence: true
    validates :username, uniqueness: true
    validates :email, uniqueness: true
    has_secure_password    
    
    has_many :comments # the comments left on logged in users stories 
    # current_user.comments => all the comments other users have left on their story
    
    has_many :stories, through: :comments # stories that user authored 
    # current_user.stories => return the logged in users authored stories 

    

end

t.string "username"
t.string "email"
t.string "password_digest"
t.datetime "created_at", precision: 6, null: false
t.datetime "updated_at", precision: 6, null: false
t.string "first_name"
t.string "last_name"
