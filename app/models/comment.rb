class Comment < ApplicationRecord
    validates :comments, length: { maximum: 50 }
    
    belongs_to :user 
    belongs_to :story

end
