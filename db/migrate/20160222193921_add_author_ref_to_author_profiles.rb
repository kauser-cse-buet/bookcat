class AddAuthorRefToAuthorProfiles < ActiveRecord::Migration
  def change
    add_reference :author_profiles, :author, index: true, foreign_key: true
  end
end
