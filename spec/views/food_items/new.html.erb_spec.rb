require 'spec_helper'

describe "food_items/new" do
  before(:each) do
    assign(:food_item, stub_model(FoodItem,
      :name => "MyString",
      :extension => 1
    ).as_new_record)
  end

  it "renders new food_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_items_path, "post" do
      assert_select "input#food_item_name[name=?]", "food_item[name]"
      assert_select "input#food_item_extension[name=?]", "food_item[extension]"
    end
  end
end
