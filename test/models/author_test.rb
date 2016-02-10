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

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  # test "the truth" do
  #   assert true
  # end

  test "normal author should be valid" do
    ayn = authors(:ayn)
    assert ayn.save
  end

  test "author with nil first name should be invalid" do
    ayn = authors(:ayn)
    ayn.first_name = nil
    assert ayn.invalid?
  end

  test "author with empty string first name should be invalid" do
    ayn = authors(:ayn)
    ayn.first_name = ''
    assert ayn.invalid?
  end

  test "author with whitespace first name should be invalid" do
    ayn = authors(:ayn)
    ayn.first_name = '    '
    assert ayn.invalid?
  end

  test "author with no last name should be invalid" do
    ayn = authors(:ayn)
    ayn.last_name = nil
    assert ayn.invalid?
  end

  test "author with year born before 1900 should be invalid" do
    ayn = authors(:ayn)
    ayn.year_born = 1899
    assert ayn.invalid?
  end

end
