require "test_helper"

class SpellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell = spells(:one)
  end

  test "should get index" do
    get spells_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_url
    assert_response :success
  end

  test "should create spell" do
    assert_difference("Spell.count") do
      post spells_url, params: { spell: { character_id: @spell.character_id, cost_to_cast: @spell.cost_to_cast, cost_to_maintain: @spell.cost_to_maintain, description: @spell.description, difficulty: @spell.difficulty, duration: @spell.duration, item_enchantment: @spell.item_enchantment, prerequisites: @spell.prerequisites, spell: @spell.spell, spell_class: @spell.spell_class, spell_college: @spell.spell_college, time_to_cast: @spell.time_to_cast } }
    end

    assert_redirected_to spell_url(Spell.last)
  end

  test "should show spell" do
    get spell_url(@spell)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_url(@spell)
    assert_response :success
  end

  test "should update spell" do
    patch spell_url(@spell), params: { spell: { character_id: @spell.character_id, cost_to_cast: @spell.cost_to_cast, cost_to_maintain: @spell.cost_to_maintain, description: @spell.description, difficulty: @spell.difficulty, duration: @spell.duration, item_enchantment: @spell.item_enchantment, prerequisites: @spell.prerequisites, spell: @spell.spell, spell_class: @spell.spell_class, spell_college: @spell.spell_college, time_to_cast: @spell.time_to_cast } }
    assert_redirected_to spell_url(@spell)
  end

  test "should destroy spell" do
    assert_difference("Spell.count", -1) do
      delete spell_url(@spell)
    end

    assert_redirected_to spells_url
  end
end
