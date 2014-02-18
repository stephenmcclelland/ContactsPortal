require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :company => "Company",
        :email => "Email",
        :address_line1 => "Address Line1",
        :address_line2 => "Address Line2",
        :county => "County",
        :country => "Country",
        :postcode => "Postcode",
        :hobbies => "Hobbies",
        :interests => "Interests",
        :meeting_notes => "Meeting Notes",
        :mobile => "Mobile",
        :telephone => "Telephone"
      ),
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :company => "Company",
        :email => "Email",
        :address_line1 => "Address Line1",
        :address_line2 => "Address Line2",
        :county => "County",
        :country => "Country",
        :postcode => "Postcode",
        :hobbies => "Hobbies",
        :interests => "Interests",
        :meeting_notes => "Meeting Notes",
        :mobile => "Mobile",
        :telephone => "Telephone"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line1".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line2".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Hobbies".to_s, :count => 2
    assert_select "tr>td", :text => "Interests".to_s, :count => 2
    assert_select "tr>td", :text => "Meeting Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
  end
end
