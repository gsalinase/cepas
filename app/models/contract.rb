class Contract < ApplicationRecord
  belongs_to :magazine
  belongs_to :enologist
  belongs_to :position
end
