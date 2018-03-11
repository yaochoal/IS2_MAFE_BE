require 'test_helper'

class ScoreteachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scoreteacher = scoreteachers(:one)
  end

  test "should get index" do
    get scoreteachers_url, as: :json
    assert_response :success
  end

  test "should create scoreteacher" do
    assert_difference('Scoreteacher.count') do
      post scoreteachers_url, params: { scoreteacher: { score: @scoreteacher.score, votes: @scoreteacher.votes } }, as: :json
    end

    assert_response 201
  end

  test "should show scoreteacher" do
    get scoreteacher_url(@scoreteacher), as: :json
    assert_response :success
  end

  test "should update scoreteacher" do
    patch scoreteacher_url(@scoreteacher), params: { scoreteacher: { score: @scoreteacher.score, votes: @scoreteacher.votes } }, as: :json
    assert_response 200
  end

  test "should destroy scoreteacher" do
    assert_difference('Scoreteacher.count', -1) do
      delete scoreteacher_url(@scoreteacher), as: :json
    end

    assert_response 204
  end
end
