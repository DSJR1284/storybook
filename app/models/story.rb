class Story < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, length: { minimum: 50 }
    
    has_many :comments
    has_many :users, through: :comments
      

    
end

