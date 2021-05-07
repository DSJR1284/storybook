class Comment < ApplicationRecord
    validates :reviews, presence: true  
    belongs_to :user 
    belongs_to :story

    # default_scope {where("removed_at IS NULL")}

    # SELECT * FROM comments WHERE _ is NULL
    
    # def self.default_scope 

    # end 

    # User._.merge(User.active)
    
end
