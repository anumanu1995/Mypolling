class Pollcriterium < ApplicationRecord
    has_many :polloptions, dependent: :destroy
    has_many :polldetails, dependent: :destroy
end
