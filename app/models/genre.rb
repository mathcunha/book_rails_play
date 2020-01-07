class Genre < ApplicationRecord
  extend FriendlyId
  has_many :books
  has_many :authors, through: :books

  friendly_id :name, use: :slugged
end
