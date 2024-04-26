class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "name has to be present!" }
    validates :email, presence: { message: "there is no email!" }
    validates :password, presence: { message: "no password?!" }
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "there is another email" }
    validates :password, length: { minimum: 6, message: "too short, min is 6 chars" }
end