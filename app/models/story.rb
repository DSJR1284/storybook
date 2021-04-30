class Story < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :descrition, length: { in: 50..100 }
    
    has_many :comments
    has_many :users, through: :comments   
    
end

