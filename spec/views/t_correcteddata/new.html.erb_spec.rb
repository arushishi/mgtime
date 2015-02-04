require 'spec_helper'

describe "t_correcteddata/new" do
  before(:each) do
    assign(:t_correcteddatum, stub_model(TCorrecteddatum,
      :t_punchdata_id => 1,
      :m_user_id => 1,
      :access_control_kubun => "MyString",
      :comment => "MyString",
      :delete_flg => 1
    ).as_new_record)
  end

  it "renders new t_correcteddatum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", t_correcteddata_path, "post" do
      assert_select "input#t_correcteddatum_t_punchdata_id[name=?]", "t_correcteddatum[t_punchdata_id]"
      assert_select "input#t_correcteddatum_m_user_id[name=?]", "t_correcteddatum[m_user_id]"
      assert_select "input#t_correcteddatum_access_control_kubun[name=?]", "t_correcteddatum[access_control_kubun]"
      assert_select "input#t_correcteddatum_comment[name=?]", "t_correcteddatum[comment]"
      assert_select "input#t_correcteddatum_delete_flg[name=?]", "t_correcteddatum[delete_flg]"
    end
  end
end
