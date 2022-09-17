require 'rails_helper'

RSpec.describe Polloption, type: :model do
  describe "Associations" do
    it {should belong_to(:Pollcriterium).without_validating_presence }
    it {should have_many(:polldetails).with_foreign_key(:Polloption_id)}
  end
end
