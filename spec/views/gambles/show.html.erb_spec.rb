require 'rails_helper'

RSpec.describe "gambles/show", type: :view do
  before(:each) do
    @gamble = assign(:gamble, Gamble.create!(
      :amount => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
