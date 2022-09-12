class CandidatesController < ApplicationController
    before_action :authenticate_user!
    layout 'admin'
    def index
        @candidates = Candidate.left_joins(:polldetails).select('candidates.*,polldetails.Polloption_id')
    end
    def new
        @candidate = Candidate.new()
    end
    def create
        @candidate = Candidate.new(candidate_params)
        if @candidate.save
            redirect_to candidates_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit
        @candidate = Candidate.find(params[:id])
    end
    def update
        @candidate = Candidate.find(params[:id])
        if @candidate.update(candidate_params)
            redirect_to candidates_path
        else
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @candidate = Candidate.find(params[:id])
        @candidate.destroy
        redirect_to candidates_path
    end
    private def candidate_params
        params.required(:candidate).permit(:candidate_fname,:candidate_lname,:candidate_age,:candidate_address)
    end
end
