require 'test_helper'

class ScoreresourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scoreresource = scoreresources(:one)
  end

  test "should get index" do
    get scoreresources_url, as: :json
    assert_response :success
  end

  test "should create scoreresource" do
    assert_difference('Scoreresource.count') do
      post scoreresources_url, params: { scoreresource: { score: @scoreresource.score, votes: @scoreresource.votes } }, as: :json
    end

    assert_response 201
  end

  test "should show scoreresource" do
    get scoreresource_url(@scoreresource), as: :json
    assert_response :success
  end

  test "should update scoreresource" do
    patch scoreresource_url(@scoreresource), params: { scoreresource: { score: @scoreresource.score, votes: @scoreresource.votes } }, as: :json
    assert_response 200
  end

  test "should destroy scoreresource" do
    assert_difference('Scoreresource.count', -1) do
      delete scoreresource_url(@scoreresource), as: :json
    end

    assert_response 204
  end
end
