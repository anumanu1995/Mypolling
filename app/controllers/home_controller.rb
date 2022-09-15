class HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'
  def index
    @pollquestion = Pollcriterium.first
    @candidates = Candidate.joins("INNER JOIN polldetails ON polldetails.Candidate_id = candidates.id INNER JOIN polloptions ON polloptions.id = polldetails.Polloption_id").select('(candidates.candidate_fname || " " || candidates.candidate_lname) as name,polloptions.poll_option,polldetails.id')
    @polloptions = Polloption.all
    @candidate_count = Candidate.all.count
    @poll_count = Polldetail.all.count

  end
end
