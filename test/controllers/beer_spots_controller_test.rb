require 'test_helper'

class BeerSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_spots_index_url
    assert_response :success
  end

  test "should get create" do
    get beer_spots_create_url
    assert_response :success
  end

end
