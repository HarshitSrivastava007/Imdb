class CrewMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :crew

  scope :find_role, -> { where('role=? and movie_id=?')}
end
