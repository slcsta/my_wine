class User < ActiveRecord::Base
    has_many :wines
    # validates :email, :username, :password, presence: true
    # validates :email, uniqueness: true
    has_secure_password 
end