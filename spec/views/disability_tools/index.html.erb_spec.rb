require 'rails_helper'

RSpec.describe "disability_tools/index", type: :view do
  before(:each) do
    assign(:disability_tools, [
      DisabilityTool.create!(
        :notes => "Notes",
        :condition => "Condition",
        :severity => 2,
        :firstname => "Firstname",
        :lastname => "Lastname"
      ),
      DisabilityTool.create!(
        :notes => "Notes",
        :condition => "Condition",
        :severity => 2,
        :firstname => "Firstname",
        :lastname => "Lastname"
      )
    ])
  end

  it "renders a list of disability_tools" do
    render
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
  end
end
