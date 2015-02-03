require 'spec_helper'

describe "m_users/show" do
  before(:each) do
    @m_user = assign(:m_user, stub_model(MUser))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
