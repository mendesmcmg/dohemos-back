require 'test_helper'

class BloodCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_center = blood_centers(:one)
  end

  test "should get index" do
    get blood_centers_url, as: :json
    assert_response :success
  end

  test "should create blood_center" do
    assert_difference('BloodCenter.count') do
      post blood_centers_url, params: { blood_center: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show blood_center" do
    get blood_center_url(@blood_center), as: :json
    assert_response :success
  end

  test "should update blood_center" do
    patch blood_center_url(@blood_center), params: { blood_center: {  } }, as: :json
    assert_response 200
  end

  test "should destroy blood_center" do
    assert_difference('BloodCenter.count', -1) do
      delete blood_center_url(@blood_center), as: :json
    end

    assert_response 204
  end
end
