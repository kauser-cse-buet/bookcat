class CreateAuthorProfiles < ActiveRecord::Migration
  def change
    create_table :author_profiles do |t|
      t.string :birthplace
      t.text :bio
      t.text :awards

      t.timestamps null: false
    end
  end
end
