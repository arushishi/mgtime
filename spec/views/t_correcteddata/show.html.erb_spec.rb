require 'spec_helper'

describe "t_correcteddata/show" do
  before(:each) do
    @t_correcteddatum = assign(:t_correcteddatum, stub_model(TCorrecteddatum,
      :t_punchdatum_id => 1,
      :m_user_id => 2,
      :access_control_kubun => "Access Control Kubun",
      :comment => "Comment",
      :delete_flg => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Access Control Kubun/)
    rendered.should match(/Comment/)
    rendered.should match(/3/)
  end
end
