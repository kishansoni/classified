require 'spec_helper'

describe "advertisements/show" do
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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
