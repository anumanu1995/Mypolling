require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe "Associations" do
    # it {should have_many(:polldetails).with_foreign_key('Candidate_id').without_validating_presence}
  end
  describe "Validations" do
    it {should validate_presence_of(:candidate_fname)}
    it {should validate_presence_of(:candidate_lname)}
    it {should validate_presence_of(:candidate_age)}
    it {should validate_presence_of(:candidate_address)}
  end
  describe "Associations" do
    it {should have_many(:polldetails).with_foreign_key(:Candidate_id)}
  end
end
