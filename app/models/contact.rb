class Contact < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :company, :country, :county, :email, :first_name, :hobbies, :interests, :last_name, :meeting_notes, :mobile, :postcode, :telephone, :title

  	def full_name
		self.first_name + " " + self.last_name
	end
  
  end
