require 'spec_helper'

describe "steps/index.html.haml" do
  before(:each) do
    assign(:steps, [
      stub_model(Step,
        :index => 1,
        :text => "MyText",
        :steplist => nil
      ),
      stub_model(Step,
        :index => 1,
        :text => "MyText",
        :steplist => nil
      )
    ])
  end

  it "renders a list of steps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
