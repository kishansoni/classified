require 'spec_helper'

describe "advertisements/index" do
  before(:each) do
    assign(:advertisements, [
      stub_model(Advertisement,
        :advertisement_status_id => 1,
        :values_xml => "MyText",
        :paid => false,
        :deleted => false,
        :user => nil,
        :category => nil
      ),
      stub_model(Advertisement,
        :advertisement_status_id => 1,
        :values_xml => "MyText",
        :paid => false,
        :deleted => false,
        :user => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of advertisements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
