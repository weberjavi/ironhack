# require "./exercice.rb"

RSpec.describe "PoiRanking" do

	before :each do 
		@PoiRanking = PoiRanking.new
	end	

	it "return if it is an instance of PoiRanking" do
		expect(@PoiRanking).to be_instance_of(PoiRanking)
	end	

	it "returns 1 if visits is equal to 1" do
	  	expect(@PoiRanking.visits = 1).to eq(1)
	end

	it "returns 1 if one visit is added" do
		expect(@PoiRanking.add_visit).to eq(1)
	end	

	it "returns an aray" do
		expect(@PoiRanking.comments).to be_kind_of(Array)
	end	

end



