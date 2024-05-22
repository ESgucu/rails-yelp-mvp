class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5, message: "Value should be between 0-5" }
  # validates :rating, numericality: { }
  belongs_to :restaurant
end
