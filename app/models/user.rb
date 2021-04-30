class User < ApplicationRecord
    
    validates :first_name, :last_name, presence: true
    validates :username, uniqueness: true
    validates :email, format: { with: /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/, message: "Email in valid" }
    validates :password, length: { in: 6..20 }
    has_secure_password    
    
    has_many :comments    
    has_many :stories, through: :comments    

end


