require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :first_name => "MyText",
      :last_name => "MyText",
      :postal => "MyString",
      :user => nil,
      :user_url => "MyString",
      :bio => "MyText",
      :avitar => "MyText"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profiles_path, "post" do
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
