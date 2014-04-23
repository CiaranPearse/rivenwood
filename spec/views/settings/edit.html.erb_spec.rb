require 'spec_helper'

describe "settings/edit" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :update_emails => false,
      :digest_emails => false,
      :promotional_emails => false,
      :user => nil
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setting_path(@setting), "post" do
      assert_select "input#setting_update_emails[name=?]", "setting[update_emails]"
      assert_select "input#setting_digest_emails[name=?]", "setting[digest_emails]"
      assert_select "input#setting_promotional_emails[name=?]", "setting[promotional_emails]"
      assert_select "input#setting_user[name=?]", "setting[user]"
    end
  end
end
