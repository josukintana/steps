require 'spec_helper'

describe "steps/show.html.haml" do
  before(:each) do
    @step = assign(:step, stub_model(Step,
      :index => 1,
      :text => "MyText",
      :steplist => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
