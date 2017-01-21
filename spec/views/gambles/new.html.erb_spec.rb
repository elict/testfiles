require 'rails_helper'

RSpec.describe "gambles/new", type: :view do
  before(:each) do
    assign(:gamble, Gamble.new(
      :amount => 1
    ))
  end

  it "renders new gamble form" do
    render

    assert_select "form[action=?][method=?]", gambles_path, "post" do

      assert_select "input#gamble_amount[name=?]", "gamble[amount]"
    end
  end
end
