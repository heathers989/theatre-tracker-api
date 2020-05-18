require 'test_helper'

class MusicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musical = musicals(:one)
  end

  test "should get index" do
    get musicals_url, as: :json
    assert_response :success
  end

  test "should create musical" do
    assert_difference('Musical.count') do
      post musicals_url, params: { musical: { cast: @musical.cast, name: @musical.name, playbill: @musical.playbill, theater: @musical.theater, understudies: @musical.understudies } }, as: :json
    end

    assert_response 201
  end

  test "should show musical" do
    get musical_url(@musical), as: :json
    assert_response :success
  end

  test "should update musical" do
    patch musical_url(@musical), params: { musical: { cast: @musical.cast, name: @musical.name, playbill: @musical.playbill, theater: @musical.theater, understudies: @musical.understudies } }, as: :json
    assert_response 200
  end

  test "should destroy musical" do
    assert_difference('Musical.count', -1) do
      delete musical_url(@musical), as: :json
    end

    assert_response 204
  end
end
