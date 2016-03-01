# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :integer
#  summary    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#

class Book < ActiveRecord::Base
  belongs_to :author, class_name: "Author", foreign_key: "creator_id"
end
