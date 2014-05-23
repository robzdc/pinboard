require 'spec_helper'

describe "pins/show" do
  before(:each) do
    @pin = assign(:pin, stub_model(Pin,
      :title => "Title",
      :description => "MyText",
      :status => 1,
      :user_id => 2,
      :category_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
