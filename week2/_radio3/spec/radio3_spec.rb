require 'spec_helper'

describe Radio3 do
  it 'has a version number' do
    expect(Radio3::VERSION).not_to be nil
  end

  it "should return a programm list" do
  	expect(R3Client.new.get_programs(1)).to_not be_nil
  end


	it "should return a audio list" do
	  expect(R3Client.new.get_audios(1875)).to_not be_nil
	end

end
