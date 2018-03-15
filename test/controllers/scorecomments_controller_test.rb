require 'test_helper'

class ScorecommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scorecomment = scorecomments(:one)
  end

  test "should get index" do
    get scorecomments_url, as: :json
    assert_response :success
  end

  test "should create scorecomment" do
    assert_difference('Scorecomment.count') do
      post scorecomments_url, params: { scorecomment: { negative: @scorecomment.negative, positive: @scorecomment.positive } }, as: :json
    end

    assert_response 201
  end

  test "should show scorecomment" do
    get scorecomment_url(@scorecomment), as: :json
    assert_response :success
  end

  test "should update scorecomment" do
    patch scorecomment_url(@scorecomment), params: { scorecomment: { negative: @scorecomment.negative, positive: @scorecomment.positive } }, as: :json
    assert_response 200
  end

  test "should destroy scorecomment" do
    assert_difference('Scorecomment.count', -1) do
      delete scorecomment_url(@scorecomment), as: :json
    end

    assert_response 204
  end
end
