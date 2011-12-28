require 'spec_helper'

describe "steps/new.html.haml" do
  before(:each) do
    assign(:step, stub_model(Step,
      :index => 1,
      :text => "MyText",
      :steplist => nil
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steps_path, :method => "post" do
      assert_select "input#step_index", :name => "step[index]"
      assert_select "textarea#step_text", :name => "step[text]"
      assert_select "input#step_steplist", :name => "step[steplist]"
    end
  end
end
