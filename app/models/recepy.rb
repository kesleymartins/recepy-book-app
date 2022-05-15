class Recepy < ApplicationRecord
  belongs_to :recepy_book
  has_many :ingredients
  has_many :steps

  scope :my_recepies, -> (recepy_book) { where(recepy_book_id: recepy_book )} 
end
