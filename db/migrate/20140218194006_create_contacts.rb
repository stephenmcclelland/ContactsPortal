class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :company
      t.string :email
      t.string :address_line1
      t.string :address_line2
      t.string :county
      t.string :country
      t.string :postcode
      t.string :hobbies
      t.string :interests
      t.string :meeting_notes
      t.string :mobile
      t.string :telephone

      t.timestamps
    end
  end
end
