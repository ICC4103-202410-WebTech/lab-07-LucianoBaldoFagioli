class Tag < ApplicationRecord
    has_and_belongs_to_many :posts

    validates :name, presence: { message: "name error!" }, uniqueness: { message: "name error!" }
end