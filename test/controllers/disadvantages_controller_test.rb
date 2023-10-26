require "test_helper"

class DisadvantagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disadvantage = disadvantages(:one)
  end

  test "should get index" do
    get disadvantages_url
    assert_response :success
  end

  test "should get new" do
    get new_disadvantage_url
    assert_response :success
  end

  test "should create disadvantage" do
    assert_difference("Disadvantage.count") do
      post disadvantages_url, params: { disadvantage: { character_id: @disadvantage.character_id, cost: @disadvantage.cost, description: @disadvantage.description, disadvantage: @disadvantage.disadvantage, self_control: @disadvantage.self_control } }
    end

    assert_redirected_to disadvantage_url(Disadvantage.last)
  end

  test "should show disadvantage" do
    get disadvantage_url(@disadvantage)
    assert_response :success
  end

  test "should get edit" do
    get edit_disadvantage_url(@disadvantage)
    assert_response :success
  end

  test "should update disadvantage" do
    patch disadvantage_url(@disadvantage), params: { disadvantage: { character_id: @disadvantage.character_id, cost: @disadvantage.cost, description: @disadvantage.description, disadvantage: @disadvantage.disadvantage, self_control: @disadvantage.self_control } }
    assert_redirected_to disadvantage_url(@disadvantage)
  end

  test "should destroy disadvantage" do
    assert_difference("Disadvantage.count", -1) do
      delete disadvantage_url(@disadvantage)
    end

    assert_redirected_to disadvantages_url
  end
end
