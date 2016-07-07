require 'test_helper'

class MassagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @massage = massages(:one)
  end

  test "should get index" do
    get massages_url
    assert_response :success
  end

  test "should get new" do
    get new_massage_url
    assert_response :success
  end

  test "should create massage" do
    assert_difference('Massage.count') do
      post massages_url, params: { massage: { text: @massage.text, username: @massage.username } }
    end

    assert_redirected_to massage_url(Massage.last)
  end

  test "should show massage" do
    get massage_url(@massage)
    assert_response :success
  end

  test "should get edit" do
    get edit_massage_url(@massage)
    assert_response :success
  end

  test "should update massage" do
    patch massage_url(@massage), params: { massage: { text: @massage.text, username: @massage.username } }
    assert_redirected_to massage_url(@massage)
  end

  test "should destroy massage" do
    assert_difference('Massage.count', -1) do
      delete massage_url(@massage)
    end

    assert_redirected_to massages_url
  end
end
