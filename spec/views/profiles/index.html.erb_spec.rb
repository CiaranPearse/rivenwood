require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :first_name => "MyText",
        :last_name => "MyText",
        :postal => "Postal",
        :user => nil,
        :user_url => "User Url",
        :bio => "MyText",
        :avitar => "MyText"
      ),
      stub_model(Profile,
        :first_name => "MyText",
        :last_name => "MyText",
        :postal => "Postal",
        :user => nil,
        :user_url => "User Url",
        :bio => "MyText",
        :avitar => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Postal".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "User Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
