require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "MyText",
      :last_name => "MyText",
      :postal => "MyString",
      :user => nil,
      :user_url => "MyString",
      :bio => "MyText",
      :avitar => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "textarea#profile_first_name[name=?]", "profile[first_name]"
      assert_select "textarea#profile_last_name[name=?]", "profile[last_name]"
      assert_select "input#profile_postal[name=?]", "profile[postal]"
      assert_select "input#profile_user[name=?]", "profile[user]"
      assert_select "input#profile_user_url[name=?]", "profile[user_url]"
      assert_select "textarea#profile_bio[name=?]", "profile[bio]"
      assert_select "textarea#profile_avitar[name=?]", "profile[avitar]"
    end
  end
end
