class PolldetailsController < ApplicationController
    before_action :authenticate_user!
    layout 'admin'
    def new
        @polldetail = Polldetail.new
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*').where(polldetails: {Candidate_id: nil})
        @pollquestion = Pollcriterium.first    
    end
    def create
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*').where(polldetails: {Candidate_id: nil})
        @pollquestion = Pollcriterium.first
        @polldetail = Polldetail.new(polldetail_params)
        if @polldetail.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    private def polldetail_params
        params[:polldetail][:Pollcriterium_id] = Pollcriterium.first.id
        params.required(:polldetail).permit(:Pollcriterium_id,:Candidate_id,:Polloption_id)
        
    end
end
