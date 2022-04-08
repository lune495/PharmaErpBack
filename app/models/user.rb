class User < ApplicationRecord
    
    belongs_to :role
    has_secure_password
    validates :username,

        format: { with: /\A[a-zA-Z0-9_]{2,20}\z/,message: 'ne doit contenir que des caracteres alphanumeriques ou des _'},
        uniqueness: {case_sensitive: false}

        validates :email,
        format: {with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/},
        uniqueness: {case_sensitive: false} 
end
