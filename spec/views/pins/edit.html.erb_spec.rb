require 'spec_helper'

describe "pins/edit" do
  before(:each) do
    @pin = assign(:pin, stub_model(Pin,
      :title => "MyString",
      :description => "MyText",
      :status => 1,
      :user_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit pin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pin_path(@pin), "post" do
      assert_select "input#pin_title[name=?]", "pin[title]"
      assert_select "textarea#pin_description[name=?]", "pin[description]"
      assert_select "input#pin_status[name=?]", "pin[status]"
      assert_select "input#pin_user_id[name=?]", "pin[user_id]"
      assert_select "input#pin_category_id[name=?]", "pin[category_id]"
    end
  end
end
