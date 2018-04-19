require 'test_helper'

class CareersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career = careers(:one)
  end

  test "should get index" do
    get careers_url, as: :json
    assert_response :success
  end

  test "should create career" do
    assert_difference('Career.count') do
      post careers_url, params: { career: { name: @career.name, studyplan: @career.studyplan } }, as: :json
    end

    assert_response 201
  end

  test "should show career" do
    get career_url(@career), as: :json
    assert_response :success
  end

  test "should update career" do
    patch career_url(@career), params: { career: { name: @career.name, studyplan: @career.studyplan } }, as: :json
    assert_response 200
  end

  test "should destroy career" do
    assert_difference('Career.count', -1) do
      delete career_url(@career), as: :json
    end

    assert_response 204
  end
end
