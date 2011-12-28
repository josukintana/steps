require 'spec_helper'

describe "steplists/new.html.haml" do
  before(:each) do
    assign(:steplist, stub_model(Steplist,
      :name => "MyString",
      :description => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new steplist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steplists_path, :method => "post" do
      assert_select "input#steplist_name", :name => "steplist[name]"
      assert_select "input#steplist_description", :name => "steplist[description]"
      assert_select "input#steplist_user", :name => "steplist[user]"
    end
  end
end
