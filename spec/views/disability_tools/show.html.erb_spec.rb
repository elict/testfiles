require 'rails_helper'

RSpec.describe "disability_tools/show", type: :view do
  before(:each) do
    @disability_tool = assign(:disability_tool, DisabilityTool.create!(
      :notes => "Notes",
      :condition => "Condition",
      :severity => 2,
      :firstname => "Firstname",
      :lastname => "Lastname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Notes/)
    expect(rendered).to match(/Condition/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
  end
end
