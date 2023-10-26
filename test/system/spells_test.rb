require "application_system_test_case"

class SpellsTest < ApplicationSystemTestCase
  setup do
    @spell = spells(:one)
  end

  test "visiting the index" do
    visit spells_url
    assert_selector "h1", text: "Spells"
  end

  test "should create spell" do
    visit spells_url
    click_on "New spell"

    fill_in "Character", with: @spell.character_id
    fill_in "Cost to cast", with: @spell.cost_to_cast
    fill_in "Cost to maintain", with: @spell.cost_to_maintain
    fill_in "Description", with: @spell.description
    fill_in "Difficulty", with: @spell.difficulty
    fill_in "Duration", with: @spell.duration
    fill_in "Item enchantment", with: @spell.item_enchantment
    fill_in "Prerequisites", with: @spell.prerequisites
    fill_in "Spell", with: @spell.spell
    fill_in "Spell class", with: @spell.spell_class
    fill_in "Spell college", with: @spell.spell_college
    fill_in "Time to cast", with: @spell.time_to_cast
    click_on "Create Spell"

    assert_text "Spell was successfully created"
    click_on "Back"
  end

  test "should update Spell" do
    visit spell_url(@spell)
    click_on "Edit this spell", match: :first

    fill_in "Character", with: @spell.character_id
    fill_in "Cost to cast", with: @spell.cost_to_cast
    fill_in "Cost to maintain", with: @spell.cost_to_maintain
    fill_in "Description", with: @spell.description
    fill_in "Difficulty", with: @spell.difficulty
    fill_in "Duration", with: @spell.duration
    fill_in "Item enchantment", with: @spell.item_enchantment
    fill_in "Prerequisites", with: @spell.prerequisites
    fill_in "Spell", with: @spell.spell
    fill_in "Spell class", with: @spell.spell_class
    fill_in "Spell college", with: @spell.spell_college
    fill_in "Time to cast", with: @spell.time_to_cast
    click_on "Update Spell"

    assert_text "Spell was successfully updated"
    click_on "Back"
  end

  test "should destroy Spell" do
    visit spell_url(@spell)
    click_on "Destroy this spell", match: :first

    assert_text "Spell was successfully destroyed"
  end
end
