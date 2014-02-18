require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :company => "MyString",
      :email => "MyString",
      :address_line1 => "MyString",
      :address_line2 => "MyString",
      :county => "MyString",
      :country => "MyString",
      :postcode => "MyString",
      :hobbies => "MyString",
      :interests => "MyString",
      :meeting_notes => "MyString",
      :mobile => "MyString",
      :telephone => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
      assert_select "input#contact_title", :name => "contact[title]"
      assert_select "input#contact_company", :name => "contact[company]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_address_line1", :name => "contact[address_line1]"
      assert_select "input#contact_address_line2", :name => "contact[address_line2]"
      assert_select "input#contact_county", :name => "contact[county]"
      assert_select "input#contact_country", :name => "contact[country]"
      assert_select "input#contact_postcode", :name => "contact[postcode]"
      assert_select "input#contact_hobbies", :name => "contact[hobbies]"
      assert_select "input#contact_interests", :name => "contact[interests]"
      assert_select "input#contact_meeting_notes", :name => "contact[meeting_notes]"
      assert_select "input#contact_mobile", :name => "contact[mobile]"
      assert_select "input#contact_telephone", :name => "contact[telephone]"
    end
  end
end
