class User < ApplicationRecord

    has_many :stories
    has_many :characters, through: :stories  

    
end
