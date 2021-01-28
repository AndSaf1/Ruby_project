class Post < ApplicationRecord
    scope :published, -> { where("published_at is null") }
end
