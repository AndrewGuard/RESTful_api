require 'spec_helper'

describe "Consumers API" do
  describe "GET /consumers" do
    it "returns all consumers" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers

      FactoryGirl.create :consumer, name: "Andrew Guard", password: "password"
      FactoryGirl.create :consumer, name: "Jorge Luis", password: "password"

      get "/consumers", {}, { "Accept" => "application/json" }
      response.status.should be(200)

      body = JSON.parse(response.body)
      consumer_names = body.map { |m| m["name"] }

      expect(consumer_names).to match_array(["Andrew Guard",
                                           "Jorge Luis"])
    end
  end
end
