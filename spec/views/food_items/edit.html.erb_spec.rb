require 'spec_helper'

describe "food_items/edit" do
  before(:each) do
    @food_item = assign(:food_item, stub_model(FoodItem,
      :name => "MyString",
      :extension => 1
    ))
  end

  it "renders the edit food_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_item_path(@food_item), "post" do
      assert_select "input#food_item_name[name=?]", "food_item[name]"
      assert_select "input#food_item_extension[name=?]", "food_item[extension]"
    end
  end
end
