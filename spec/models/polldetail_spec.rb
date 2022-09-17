require 'rails_helper'

RSpec.describe Polldetail, type: :model do
  describe "Associations" do
    it {should belong_to(:Pollcriterium).without_validating_presence }
    it {should belong_to(:Candidate).without_validating_presence }
    it {should belong_to(:Polloption).without_validating_presence }
  end
  describe "Validations" do
    it {should validate_presence_of(:Candidate_id)}
    it {should validate_presence_of(:Polloption_id)}
  end
end
