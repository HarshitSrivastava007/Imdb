class Asset < ApplicationRecord
  belongs_to :entity, polymorphic: true
  has_one_attached :image
end
