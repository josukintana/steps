require 'spec_helper'

describe "steplists/index.html.haml" do
  before(:each) do
    assign(:steplists, [
      stub_model(Steplist,
        :name => "Name",
        :description => "Description",
        :user => nil
      ),
      stub_model(Steplist,
        :name => "Name",
        :description => "Description",
        :user => nil
      )
    ])
  end

  it "renders a list of steplists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
