require 'spec_helper'

describe "m_cards/index" do
  before(:each) do
    assign(:m_cards, [
      stub_model(MCard),
      stub_model(MCard)
    ])
  end

  it "renders a list of m_cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
