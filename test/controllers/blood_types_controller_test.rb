require 'test_helper'

class BloodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_type = blood_types(:one)
  end

  test "should get index" do
    get blood_types_url, as: :json
    assert_response :success
  end

  test "should create blood_type" do
    assert_difference('BloodType.count') do
      post blood_types_url, params: { blood_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show blood_type" do
    get blood_type_url(@blood_type), as: :json
    assert_response :success
  end

  test "should update blood_type" do
    patch blood_type_url(@blood_type), params: { blood_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy blood_type" do
    assert_difference('BloodType.count', -1) do
      delete blood_type_url(@blood_type), as: :json
    end

    assert_response 204
  end
end
