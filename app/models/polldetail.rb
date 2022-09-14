class Polldetail < ApplicationRecord
  belongs_to :Pollcriterium
  belongs_to :Candidate
  belongs_to :Polloption
  validates :Candidate_id, presence: {:message=>nil}
  validates :Polloption_id, presence: {:message=>nil}
end
