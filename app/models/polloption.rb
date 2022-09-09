class Polloption < ApplicationRecord
  belongs_to :Pollcriterium
  has_many :polldetails, dependent: :destroy
end
