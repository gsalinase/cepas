class Enologist < ApplicationRecord
  has_many :ratings
  has_many :contracts
  has_many :positions, through: :contracts
  has_many :magazines, through: :contracts
  has_many :wines, through: :ratings

  def position_name
    positions.map { |position| position.name }.join(',')
  end

  def work_name
    magazines.map { |magazine| magazine.name }.join(',')
  end
end
