require 'spec_helper'

describe "t_correcteddata/index" do
  before(:each) do
    assign(:t_correcteddata, [
      stub_model(TCorrecteddatum,
        :t_punchdata_id => 1,
        :m_user_id => 2,
        :access_control_kubun => "Access Control Kubun",
        :comment => "Comment",
        :delete_flg => 3
      ),
      stub_model(TCorrecteddatum,
        :t_punchdata_id => 1,
        :m_user_id => 2,
        :access_control_kubun => "Access Control Kubun",
        :comment => "Comment",
        :delete_flg => 3
      )
    ])
  end

  it "renders a list of t_correcteddata" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Access Control Kubun".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
