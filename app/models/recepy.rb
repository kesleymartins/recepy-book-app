class Recepy < ApplicationRecord
  belongs_to :recepy_book
  has_many :ingredients
  has_many :steps
end
