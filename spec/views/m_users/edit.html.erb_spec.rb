require 'spec_helper'

describe "m_users/edit" do
  before(:each) do
    @m_user = assign(:m_user, stub_model(MUser))
  end

  it "renders the edit m_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", m_user_path(@m_user), "post" do
    end
  end
end
