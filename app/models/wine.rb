class Wine < ApplicationRecord
  has_many :assemblies
  has_many :ratings
  has_many :strains, through: :assemblies
  has_many :enologists, through: :ratings
  accepts_nested_attributes_for :assemblies, reject_if: lambda {|attributes| attributes['percentage'].blank?}
  # reject_if: -> (attributes) { attributes['percentage'].blank?}

  def strain_names
    assemblies.map { |assembly| "#{assembly.strain.name} (#{assembly.percentage}%)" }.join(' - ')
  end

  def rating_score
    ratings.map{ |rating| rating.score }.join('')
  end
end
