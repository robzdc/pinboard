require 'spec_helper'

describe "pins/index" do
  before(:each) do
    assign(:pins, [
      stub_model(Pin,
        :title => "Title",
        :description => "MyText",
        :status => 1,
        :user_id => 2,
        :category_id => 3
      ),
      stub_model(Pin,
        :title => "Title",
        :description => "MyText",
        :status => 1,
        :user_id => 2,
        :category_id => 3
      )
    ])
  end

  it "renders a list of pins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
