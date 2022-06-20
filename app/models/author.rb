class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
end
