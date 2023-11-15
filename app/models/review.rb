class Review < ApplicationRecord
  ALLOWED_RATINGS = (0..5)
  public_constant :ALLOWED_RATINGS

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: ::Review::ALLOWED_RATINGS }
end
