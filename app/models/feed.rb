class Feed < ApplicationRecord
  validates :url, presence: true, format: { with: URI.regexp }

  has_and_belongs_to_many :users
end
