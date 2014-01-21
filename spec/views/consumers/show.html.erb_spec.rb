require 'spec_helper'

describe "consumers/show" do
  before(:each) do
    @consumer = assign(:consumer, stub_model(Consumer,
      :name => "Name",
      # :extension => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # rendered.should match(/1/)
  end
end
