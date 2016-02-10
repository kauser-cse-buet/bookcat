# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  year_born  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year_born, numericality: { greater_than_or_equal_to: 1900 }
end
