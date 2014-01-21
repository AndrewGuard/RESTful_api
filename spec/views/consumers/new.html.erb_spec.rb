require 'spec_helper'

describe "consumers/new" do
  before(:each) do
    assign(:consumer, stub_model(Consumer,
      :name => "MyString",
      :extension => 1
    ).as_new_record)
  end

  it "renders new consumer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumers_path, "post" do
      assert_select "input#consumer_name[name=?]", "consumer[name]"
      assert_select "input#consumer_extension[name=?]", "consumer[extension]"
    end
  end
end
