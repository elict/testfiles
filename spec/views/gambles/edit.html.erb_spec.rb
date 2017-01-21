require 'rails_helper'

RSpec.describe "gambles/edit", type: :view do
  before(:each) do
    @gamble = assign(:gamble, Gamble.create!(
      :amount => 1
    ))
  end

  it "renders the edit gamble form" do
    render

    assert_select "form[action=?][method=?]", gamble_path(@gamble), "post" do

      assert_select "input#gamble_amount[name=?]", "gamble[amount]"
    end
  end
end
