require 'spec_helper'

describe "m_users/new" do
  before(:each) do
    assign(:m_user, stub_model(MUser).as_new_record)
  end

  it "renders new m_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", m_users_path, "post" do
    end
  end
end
