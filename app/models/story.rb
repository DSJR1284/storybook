class Story < ApplicationRecord
    belongs_to :user 
    has_many :characters, through: :user
end
