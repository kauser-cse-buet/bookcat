# == Schema Information
#
# Table name: author_profiles
#
#  id         :integer          not null, primary key
#  birthplace :string
#  bio        :text
#  awards     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

require 'test_helper'

class AuthorProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
