require 'test_helper'

class RentalBuildingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rental_buildings_new_url
    assert_response :success
  end

end
