require "application_system_test_case"

class DisadvantagesTest < ApplicationSystemTestCase
  setup do
    @disadvantage = disadvantages(:one)
  end

  test "visiting the index" do
    visit disadvantages_url
    assert_selector "h1", text: "Disadvantages"
  end

  test "should create disadvantage" do
    visit disadvantages_url
    click_on "New disadvantage"

    fill_in "Character", with: @disadvantage.character_id
    fill_in "Cost", with: @disadvantage.cost
    fill_in "Description", with: @disadvantage.description
    fill_in "Disadvantage", with: @disadvantage.disadvantage
    fill_in "Self control", with: @disadvantage.self_control
    click_on "Create Disadvantage"

    assert_text "Disadvantage was successfully created"
    click_on "Back"
  end

  test "should update Disadvantage" do
    visit disadvantage_url(@disadvantage)
    click_on "Edit this disadvantage", match: :first

    fill_in "Character", with: @disadvantage.character_id
    fill_in "Cost", with: @disadvantage.cost
    fill_in "Description", with: @disadvantage.description
    fill_in "Disadvantage", with: @disadvantage.disadvantage
    fill_in "Self control", with: @disadvantage.self_control
    click_on "Update Disadvantage"

    assert_text "Disadvantage was successfully updated"
    click_on "Back"
  end

  test "should destroy Disadvantage" do
    visit disadvantage_url(@disadvantage)
    click_on "Destroy this disadvantage", match: :first

    assert_text "Disadvantage was successfully destroyed"
  end
end
