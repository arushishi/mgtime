require 'spec_helper'

describe "m_cards/edit" do
  before(:each) do
    @m_card = assign(:m_card, stub_model(MCard))
  end

  it "renders the edit m_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", m_card_path(@m_card), "post" do
    end
  end
end
