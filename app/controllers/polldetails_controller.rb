class PolldetailsController < ApplicationController
    before_action :authenticate_user!
    layout 'admin'
    def new
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*').where(polldetails: {Candidate_id: nil})
        @pollquestion = Pollcriterium.first
        #  @pollquestion.polloptions.each do |options|
        #     puts options.poll_option
        # end
        
        
    end
end
