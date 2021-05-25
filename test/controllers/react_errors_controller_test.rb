require "test_helper"

class ReactErrorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @react_error = react_errors(:one)
  end

  test "should get index" do
    get react_errors_url, as: :json
    assert_response :success
  end

  test "should create react_error" do
    assert_difference('ReactError.count') do
      post react_errors_url, params: { react_error: { title: @react_error.title, type: @react_error.type } }, as: :json
    end

    assert_response 201
  end

  test "should show react_error" do
    get react_error_url(@react_error), as: :json
    assert_response :success
  end

  test "should update react_error" do
    patch react_error_url(@react_error), params: { react_error: { title: @react_error.title, type: @react_error.type } }, as: :json
    assert_response 200
  end

  test "should destroy react_error" do
    assert_difference('ReactError.count', -1) do
      delete react_error_url(@react_error), as: :json
    end

    assert_response 204
  end
end
