class Restaurant < ApplicationRecord
  ALLOWED_CATEGORIES = %w[chinese italian japanese french belgian].freeze
  public_constant :ALLOWED_CATEGORIES

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ::Restaurant::ALLOWED_CATEGORIES }
end
