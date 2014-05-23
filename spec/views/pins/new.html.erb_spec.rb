require 'spec_helper'

describe "pins/new" do
  before(:each) do
    assign(:pin, stub_model(Pin,
      :title => "MyString",
      :description => "MyText",
      :status => 1,
      :user_id => 1,
      :category_id => 1
    ).as_new_record)
  end

  it "renders new pin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pins_path, "post" do
      assert_select "input#pin_title[name=?]", "pin[title]"
      assert_select "textarea#pin_description[name=?]", "pin[description]"
      assert_select "input#pin_status[name=?]", "pin[status]"
      assert_select "input#pin_user_id[name=?]", "pin[user_id]"
      assert_select "input#pin_category_id[name=?]", "pin[category_id]"
    end
  end
end
