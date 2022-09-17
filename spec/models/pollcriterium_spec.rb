require 'rails_helper'

RSpec.describe Pollcriterium, type: :model do
  describe "Associations" do
    it {should have_many(:polloptions).with_foreign_key(:Pollcriterium_id)}
    it {should have_many(:polldetails).with_foreign_key(:Pollcriterium_id)}
  end
  describe "Validations" do
    it {should validate_presence_of(:poll_question)}
  end
end
