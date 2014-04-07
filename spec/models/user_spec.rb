require 'spec_helper'
describe User do
	it "has a valid username" do
		FactoryGirl.build(:user, username: nil).should_not be_valid
	end
	it "has a valid password"
	it "authenticated by his role"
end
