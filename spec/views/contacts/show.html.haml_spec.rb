require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Title/)
    rendered.should match(/Company/)
    rendered.should match(/Email/)
    rendered.should match(/Address Line1/)
    rendered.should match(/Address Line2/)
    rendered.should match(/County/)
    rendered.should match(/Country/)
    rendered.should match(/Postcode/)
    rendered.should match(/Hobbies/)
    rendered.should match(/Interests/)
    rendered.should match(/Meeting Notes/)
    rendered.should match(/Mobile/)
    rendered.should match(/Telephone/)
  end
end
