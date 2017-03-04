class AddCreatorRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :creator, index: true, foreign_key: true
  end
end
