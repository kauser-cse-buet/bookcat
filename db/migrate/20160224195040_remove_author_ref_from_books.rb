class RemoveAuthorRefFromBooks < ActiveRecord::Migration
  def change
    remove_reference :books, :author, index: true, foreign_key: true
  end
end
