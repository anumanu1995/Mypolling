class Polldetail < ApplicationRecord
  belongs_to :Pollcriterium
  belongs_to :Candidate
  belongs_to :Polloption
end
