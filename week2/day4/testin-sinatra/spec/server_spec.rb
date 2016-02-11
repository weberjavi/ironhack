#/spec/server_spec.rb

require_relative "../server.rb"
require "rspec"
require "rack/test"

describe "Server Service" do 
  include Rack::Test::Methods #Helpers que utilizaremos en los test

  def app
    Sinatra::Application # Esto es un truco para poder testarlo
  end

  it "should load the home page" do
    get "/"
    expect(last_response).to be_ok #Esto seía que te responde 200
  end

  it "should not load the home page" do 
    get "/home"
    expect(last_response).to_not be_ok
  end

  it "should load the other page" do
    get "/real_page"  
    expect(last_response).to be_ok
  end

  it "should redirect to the real_page" do
    get "/hi"
    expect(last_response.redirect?).to be(true)
    follow_redirect!
    expect(last_request.path).to eq("/real_page")
  end

end