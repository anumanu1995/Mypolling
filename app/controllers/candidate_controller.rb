class CandidateController < ApplicationController
    layout 'admin'
    def index
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*,polldetails.*')
         @candidates.each  do |c|
            puts c.candidate_fname
         end
    end
end
