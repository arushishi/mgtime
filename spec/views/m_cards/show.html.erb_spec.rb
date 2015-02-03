require 'spec_helper'

describe "m_cards/show" do
  before(:each) do
    @m_card = assign(:m_card, stub_model(MCard))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
