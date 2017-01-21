require 'rails_helper'

RSpec.describe "disability_tools/new", type: :view do
  before(:each) do
    assign(:disability_tool, DisabilityTool.new(
      :notes => "MyString",
      :condition => "MyString",
      :severity => 1,
      :firstname => "MyString",
      :lastname => "MyString"
    ))
  end

  it "renders new disability_tool form" do
    render

    assert_select "form[action=?][method=?]", disability_tools_path, "post" do

      assert_select "input#disability_tool_notes[name=?]", "disability_tool[notes]"

      assert_select "input#disability_tool_condition[name=?]", "disability_tool[condition]"

      assert_select "input#disability_tool_severity[name=?]", "disability_tool[severity]"

      assert_select "input#disability_tool_firstname[name=?]", "disability_tool[firstname]"

      assert_select "input#disability_tool_lastname[name=?]", "disability_tool[lastname]"
    end
  end
end
