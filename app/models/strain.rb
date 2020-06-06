class Strain < ApplicationRecord
  validates :name, uniqueness: true, exclusion: { in: [nil, ''] }

  has_many :assemblies
  has_many :wines, through: :assemblies
end
