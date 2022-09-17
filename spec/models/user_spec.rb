require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    User.new(email:"anu123@gmail.com",password:"admin123")
  }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end
end
