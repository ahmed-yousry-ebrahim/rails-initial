require 'faker'
FactoryGirl.define do
	factory :user do |f|
	 f.username { Faker::Name.username } 
	end

end