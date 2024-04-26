class Post < ApplicationRecord
    belongs_to :user
    has_many :posts
    belongs_to :post, optional: true
    has_and_belongs_to_many :tags

    validates :title, :content, :user_id, presence: { message: "you missed something" }
    validates :answers_count, :likes_count, numericality: { greater_than_or_equal_to: 0, message: "at least 0 value needed" }

    before_save :set_published_at

    private

    def set_published_at
        self.published_at ||= Time.now
    end
end