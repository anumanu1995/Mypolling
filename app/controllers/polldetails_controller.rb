class PolldetailsController < ApplicationController
    before_action :authenticate_user!
    layout 'admin'
    def index
        @candidates = Candidate.joins("INNER JOIN polldetails ON polldetails.Candidate_id = candidates.id INNER JOIN polloptions ON polloptions.id = polldetails.Polloption_id").select('(candidates.candidate_fname || " " || candidates.candidate_lname) as name,polloptions.poll_option,polldetails.id')
    end
    def new
        @polldetail = Polldetail.new
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*').where(polldetails: {Candidate_id: nil})
        @pollquestion = Pollcriterium.first
        @@candidates = @candidates
        @@pollquestion= @pollquestion
    end
    def create
        @candidates =@@candidates
        @pollquestion = @@pollquestion
        @polldetail = Polldetail.new(polldetail_params)
        if @polldetail.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end
     def destroy
        @polldetail = Polldetail.find(params[:id])
        @polldetail.destroy
        redirect_to polldetails_path
     end
    private def polldetail_params
        params[:polldetail][:Pollcriterium_id] = Pollcriterium.first.id
        params.required(:polldetail).permit(:Pollcriterium_id,:Candidate_id,:Polloption_id)
        
    end
end
