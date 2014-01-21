require 'spec_helper'

describe "consumers/edit" do
  before(:each) do
    @consumer = assign(:consumer, stub_model(Consumer,
      :name => "MyString",
      :extension => 1
    ))
  end

  it "renders the edit consumer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumer_path(@consumer), "post" do
      assert_select "input#consumer_name[name=?]", "consumer[name]"
      assert_select "input#consumer_extension[name=?]", "consumer[extension]"
    end
  end
end
