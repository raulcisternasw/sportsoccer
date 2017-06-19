require 'test_helper'

class SoccerfieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soccerfield = soccerfields(:one)
  end

  test "should get index" do
    get soccerfields_url
    assert_response :success
  end

  test "should get new" do
    get new_soccerfield_url
    assert_response :success
  end

  test "should create soccerfield" do
    assert_difference('Soccerfield.count') do
      post soccerfields_url, params: { soccerfield: { code: @soccerfield.code, date: @soccerfield.date, state: @soccerfield.state, time: @soccerfield.time, user_id: @soccerfield.user_id } }
    end

    assert_redirected_to soccerfield_url(Soccerfield.last)
  end

  test "should show soccerfield" do
    get soccerfield_url(@soccerfield)
    assert_response :success
  end

  test "should get edit" do
    get edit_soccerfield_url(@soccerfield)
    assert_response :success
  end

  test "should update soccerfield" do
    patch soccerfield_url(@soccerfield), params: { soccerfield: { code: @soccerfield.code, date: @soccerfield.date, state: @soccerfield.state, time: @soccerfield.time, user_id: @soccerfield.user_id } }
    assert_redirected_to soccerfield_url(@soccerfield)
  end

  test "should destroy soccerfield" do
    assert_difference('Soccerfield.count', -1) do
      delete soccerfield_url(@soccerfield)
    end

    assert_redirected_to soccerfields_url
  end
end
