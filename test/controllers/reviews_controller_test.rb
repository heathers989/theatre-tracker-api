require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url, as: :json
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post reviews_url, params: { review: { at_stagedoor: @review.at_stagedoor, cast_to_see: @review.cast_to_see, comments: @review.comments, date_of_show: @review.date_of_show, if_stagedoor: @review.if_stagedoor, if_understudies: @review.if_understudies, photos: @review.photos, rating: @review.rating, reviewer_name: @review.reviewer_name, show_seen: @review.show_seen, understudies_seen: @review.understudies_seen } }, as: :json
    end

    assert_response 201
  end

  test "should show review" do
    get review_url(@review), as: :json
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { at_stagedoor: @review.at_stagedoor, cast_to_see: @review.cast_to_see, comments: @review.comments, date_of_show: @review.date_of_show, if_stagedoor: @review.if_stagedoor, if_understudies: @review.if_understudies, photos: @review.photos, rating: @review.rating, reviewer_name: @review.reviewer_name, show_seen: @review.show_seen, understudies_seen: @review.understudies_seen } }, as: :json
    assert_response 200
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review), as: :json
    end

    assert_response 204
  end
end
