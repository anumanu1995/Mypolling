class Pollcriterium < ApplicationRecord
    has_many :polloptions, dependent: :destroy,foreign_key: :Pollcriterium_id
    has_many :polldetails, dependent: :destroy,foreign_key: :Pollcriterium_id
    validates :poll_question, presence: {:message=>nil}
end
