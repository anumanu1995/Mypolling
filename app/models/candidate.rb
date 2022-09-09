class Candidate < ApplicationRecord
    has_many :polldetails,dependent: :destroy
end
