class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true
  validates validates :rating, :inclusion => { :in => 0..5 }, :presence => { :message => " la note doit être comprise entre 0 et 5" }
end
