class Polloption < ApplicationRecord
  belongs_to :Pollcriterium
  has_many :polldetails, dependent: :destroy,foreign_key: :Polloption_id
end
