class Story < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments   
    # belongs_to :author, class_name: :user 
    # has_many :commentors, class_name: :user, through: :comments, foreign_key: :story_id 
end

