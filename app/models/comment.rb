class Comment < ApplicationRecord
    validates :comments, length: { minimum: 50 }    
    belongs_to :user 
    belongs_to :story

end
