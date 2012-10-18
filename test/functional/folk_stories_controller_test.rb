require 'test_helper'

class FolkStoriesControllerTest < ActionController::TestCase
  setup do
    @folk_story = folk_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folk_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folk_story" do
    assert_difference('FolkStory.count') do
      post :create, :folk_story => { :body => @folk_story.body, :title => @folk_story.title }
    end

    assert_redirected_to folk_story_path(assigns(:folk_story))
  end

  test "should show folk_story" do
    get :show, :id => @folk_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folk_story
    assert_response :success
  end

  test "should update folk_story" do
    put :update, :id => @folk_story, :folk_story => { :body => @folk_story.body, :title => @folk_story.title }
    assert_redirected_to folk_story_path(assigns(:folk_story))
  end

  test "should destroy folk_story" do
    assert_difference('FolkStory.count', -1) do
      delete :destroy, :id => @folk_story
    end

    assert_redirected_to folk_stories_path
  end
end
