require 'rails_helper'

RSpec.describe "gambles/index", type: :view do
  before(:each) do
    assign(:gambles, [
      Gamble.create!(
        :amount => 2
      ),
      Gamble.create!(
        :amount => 2
      )
    ])
  end

  it "renders a list of gambles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
