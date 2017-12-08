require 'rails_helper'

RSpec.describe User, type: :model do
  	before do 
  		@user = User.create(first_name: "Julio", last_name: "Vasquez" , email: "test@test.com", password: "12345678", password_confirmation: "12345678")
  	end

    describe "creation " do 
  	 it 'can be created' do 	
  		expect(@user).to be_valid
     end

    it 'cannot be created without attributes' do 
    	@user.first_name = nil
    	@user.last_name  = nil
    	expect(@user).to_not be_valid
    end
  
    describe "custom name methods" do 
    it "has a full name method that combies first and last name" do
      expect(@user.full_name).to eq("SNOW, JON")
        end
      end
    end
  end
