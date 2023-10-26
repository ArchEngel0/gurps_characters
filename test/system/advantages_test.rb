require "application_system_test_case"

class AdvantagesTest < ApplicationSystemTestCase
  setup do
    @advantage = advantages(:one)
  end

  test "visiting the index" do
    visit advantages_url
    assert_selector "h1", text: "Advantages"
  end

  test "should create advantage" do
    visit advantages_url
    click_on "New advantage"

    fill_in "Advantage", with: @advantage.advantage
    fill_in "Character", with: @advantage.character_id
    fill_in "Cost", with: @advantage.cost
    fill_in "Description", with: @advantage.description
    click_on "Create Advantage"

    assert_text "Advantage was successfully created"
    click_on "Back"
  end

  test "should update Advantage" do
    visit advantage_url(@advantage)
    click_on "Edit this advantage", match: :first

    fill_in "Advantage", with: @advantage.advantage
    fill_in "Character", with: @advantage.character_id
    fill_in "Cost", with: @advantage.cost
    fill_in "Description", with: @advantage.description
    click_on "Update Advantage"

    assert_text "Advantage was successfully updated"
    click_on "Back"
  end

  test "should destroy Advantage" do
    visit advantage_url(@advantage)
    click_on "Destroy this advantage", match: :first

    assert_text "Advantage was successfully destroyed"
  end
end
