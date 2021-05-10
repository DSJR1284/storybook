class User < ApplicationRecord
    
    validates :first_name, :last_name, presence: true
    validates :username, uniqueness: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Email in valid" }
    has_secure_password  
    
    has_many :stories     
    has_many :comments, through: :stories  
    
    scope :alpha, -> {order('username')}

end


