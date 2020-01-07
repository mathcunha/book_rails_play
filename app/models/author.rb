class Author < ApplicationRecord
  extend FriendlyId
  
  has_many :books
  has_many :genres, through: :books

  friendly_id :name, use: :slugged
end
