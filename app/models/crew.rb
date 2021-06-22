class Crew < ApplicationRecord
    has_and_belongs_to_many :movies ,join_table: 'crew_movies'
    
    scope :find_year, -> { where('birthday > ?', Date.parse('1990-01-01')) }
    scope :lang, -> (language,country) { where(language: language, country: country ) }

end
