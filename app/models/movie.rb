class Movie < ApplicationRecord
    validates :name, presence: true
    
    has_many :reviews, :dependent => :destroy
    has_many :watchlists
    has_many :articles
    has_many :crew_movies
    has_many :assets
    has_many_attached :images
    has_one_attached :image

    has_and_belongs_to_many :crews, join_table: "crew_movies"
    
    scope :search, -> (name){ where(name: name.upcase) }
    scope :top_rate , -> { Movie.order(rating: :DESC) }

end 