class Comment < ApplicationRecord
    
    validates :reviews, presence: true  
    belongs_to :user 
    belongs_to :story
        
end
