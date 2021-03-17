class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, presence:true, uniqueness:true, length: { minimum: 5 }
    validates :email, presence:true, uniqueness:true, length: { minimum: 10 }
end
