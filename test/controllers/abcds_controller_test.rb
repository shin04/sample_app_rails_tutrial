require 'test_helper'

class AbcdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abcd = abcds(:one)
  end

  test "should get index" do
    get abcds_url
    assert_response :success
  end

  test "should get new" do
    get new_abcd_url
    assert_response :success
  end

  test "should create abcd" do
    assert_difference('Abcd.count') do
      post abcds_url, params: { abcd: { efg: @abcd.efg } }
    end

    assert_redirected_to abcd_url(Abcd.last)
  end

  test "should show abcd" do
    get abcd_url(@abcd)
    assert_response :success
  end

  test "should get edit" do
    get edit_abcd_url(@abcd)
    assert_response :success
  end

  test "should update abcd" do
    patch abcd_url(@abcd), params: { abcd: { efg: @abcd.efg } }
    assert_redirected_to abcd_url(@abcd)
  end

  test "should destroy abcd" do
    assert_difference('Abcd.count', -1) do
      delete abcd_url(@abcd)
    end

    assert_redirected_to abcds_url
  end
end
