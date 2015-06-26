class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1}
  validates :rating, numericality: { less_than_or_equal_to: 5}
  validates :body, presence: true

end
