class Story < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, length: { minimum: 50 }
    
    belongs_to :user 
    has_many :comments
    has_many :users, through: :comments
        
end

