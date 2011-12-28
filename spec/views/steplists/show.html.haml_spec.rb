require 'spec_helper'

describe "steplists/show.html.haml" do
  before(:each) do
    @steplist = assign(:steplist, stub_model(Steplist,
      :name => "Name",
      :description => "Description",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
