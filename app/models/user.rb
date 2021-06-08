class User < ActiveRecord::Base
    has_many :wines
    validates :email, :password, presence: true
    has_secure_password 
end