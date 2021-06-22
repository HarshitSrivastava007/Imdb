class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

  after_save do
    self.movie.update(rating: Review.where(movie: movie).sum(:rating) / Review.where(movie: movie).count)
  end

  # scope :rates, -> {joins}
end
