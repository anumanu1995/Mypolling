class Candidate < ApplicationRecord
    has_many :polldetails,dependent: :destroy
    validates :candidate_fname, presence: {:message=>nil}
    validates :candidate_lname, presence: {:message=>nil}
    validates :candidate_age, presence: {:message=>nil}
    validates :candidate_address, presence: {:message=>nil}

end
