require 'spec_helper'

describe "m_cards/new" do
  before(:each) do
    assign(:m_card, stub_model(MCard).as_new_record)
  end

  it "renders new m_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", m_cards_path, "post" do
    end
  end
end
