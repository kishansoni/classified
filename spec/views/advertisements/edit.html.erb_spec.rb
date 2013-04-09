require 'spec_helper'

describe "advertisements/edit" do
  before(:each) do
    @advertisement = assign(:advertisement, stub_model(Advertisement,
      :advertisement_status_id => 1,
      :values_xml => "MyText",
      :paid => false,
      :deleted => false,
      :user => nil,
      :category => nil
    ))
  end

  it "renders the edit advertisement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => advertisements_path(@advertisement), :method => "post" do
      assert_select "input#advertisement_advertisement_status_id", :name => "advertisement[advertisement_status_id]"
      assert_select "textarea#advertisement_values_xml", :name => "advertisement[values_xml]"
      assert_select "input#advertisement_paid", :name => "advertisement[paid]"
      assert_select "input#advertisement_deleted", :name => "advertisement[deleted]"
      assert_select "input#advertisement_user", :name => "advertisement[user]"
      assert_select "input#advertisement_category", :name => "advertisement[category]"
    end
  end
end
