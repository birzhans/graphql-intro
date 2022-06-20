class Post < ApplicationRecord
  belongs_to :author
  validates :title, :body, presence: true
end
