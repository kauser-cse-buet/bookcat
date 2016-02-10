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

class AuthorsControllerTest < ActionController::TestCase
  # setup do
  #   @author = authors(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:authors)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create author" do
  #   assert_difference('Author.count') do
  #     post :create, author: { first_name: @author.first_name, last_name: @author.last_name, year_born: @author.year_born }
  #   end

  #   assert_redirected_to author_path(assigns(:author))
  # end

  # test "should show author" do
  #   get :show, id: @author
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @author
  #   assert_response :success
  # end

  # test "should update author" do
  #   patch :update, id: @author, author: { first_name: @author.first_name, last_name: @author.last_name, year_born: @author.year_born }
  #   assert_redirected_to author_path(assigns(:author))
  # end

  # test "should destroy author" do
  #   assert_difference('Author.count', -1) do
  #     delete :destroy, id: @author
  #   end

  #   assert_redirected_to authors_path
  # end
end
