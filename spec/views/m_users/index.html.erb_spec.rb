require 'spec_helper'

describe "m_users/index" do
  before(:each) do
    assign(:m_users, [
      stub_model(MUser),
      stub_model(MUser)
    ])
  end

  it "renders a list of m_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
