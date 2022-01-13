require 'test_helper'

class ProtosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proto = protos(:one)
  end

  test "should get index" do
    get protos_url
    assert_response :success
  end

  test "should get new" do
    get new_proto_url
    assert_response :success
  end

  test "should create proto" do
    assert_difference('Proto.count') do
      post protos_url, params: { proto: { title: @proto.title, user_id: @proto.user_id } }
    end

    assert_redirected_to proto_url(Proto.last)
  end

  test "should show proto" do
    get proto_url(@proto)
    assert_response :success
  end

  test "should get edit" do
    get edit_proto_url(@proto)
    assert_response :success
  end

  test "should update proto" do
    patch proto_url(@proto), params: { proto: { title: @proto.title, user_id: @proto.user_id } }
    assert_redirected_to proto_url(@proto)
  end

  test "should destroy proto" do
    assert_difference('Proto.count', -1) do
      delete proto_url(@proto)
    end

    assert_redirected_to protos_url
  end
end
