class User < ApplicationRecord
    
    validates :first_name, :last_name, presence: true
    validates :username, uniqueness: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Email in valid" }
    # validates :password, length: { in: 6..20 }
    has_secure_password  
    
    has_many :stories     
    has_many :reviews, through: :stories    

end


