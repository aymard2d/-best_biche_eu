require "test_helper"

class Owner::AnimalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_animals_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_animals_create_url
    assert_response :success
  end
end
