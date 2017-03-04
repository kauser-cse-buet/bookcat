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

class AuthorProfilesControllerTest < ActionController::TestCase
  setup do
    @author_profile = author_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_profile" do
    assert_difference('AuthorProfile.count') do
      post :create, author_profile: { awards: @author_profile.awards, bio: @author_profile.bio, birthplace: @author_profile.birthplace }
    end

    assert_redirected_to author_profile_path(assigns(:author_profile))
  end

  test "should show author_profile" do
    get :show, id: @author_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_profile
    assert_response :success
  end

  test "should update author_profile" do
    patch :update, id: @author_profile, author_profile: { awards: @author_profile.awards, bio: @author_profile.bio, birthplace: @author_profile.birthplace }
    assert_redirected_to author_profile_path(assigns(:author_profile))
  end

  test "should destroy author_profile" do
    assert_difference('AuthorProfile.count', -1) do
      delete :destroy, id: @author_profile
    end

    assert_redirected_to author_profiles_path
  end
end
