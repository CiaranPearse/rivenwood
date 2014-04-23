require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "MyText",
      :last_name => "MyText",
      :postal => "Postal",
      :user => nil,
      :user_url => "User Url",
      :bio => "MyText",
      :avitar => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Postal/)
    rendered.should match(//)
    rendered.should match(/User Url/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
