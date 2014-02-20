class UpdateLengthOfNotesHobbiesAndInterests < ActiveRecord::Migration
  def up
    change_column :contacts, :hobbies, :text
    change_column :contacts, :interests, :text
    change_column :contacts, :meeting_notes, :text
  end

  def down
    change_column :contacts, :hobbies, :string
    change_column :contacts, :interests, :string
    change_column :contacts, :meeting_notes, :string
  end
end
