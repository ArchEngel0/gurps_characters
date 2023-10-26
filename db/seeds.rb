require 'csv'
require 'faker'

Skill.delete_all
Spell.delete_all
Advantage.delete_all
Disadvantage.delete_all
Character.delete_all

character = Character.create!(name: Faker::Games::ElderScrolls.name)

CSV.foreach('db/Daytuhbaise - Skills List.csv', headers: true) do |row|
  character.skills.create!(
    skill: row['skill'],
    tech_level_required: row['tech_level_required'],
    specialization_required: row['specialization_required'],
    description: row['description'],
    defaults: row['defaults'],
    difficulty: row['difficulty'],
    attribute_modifiers: row['attribute_modifiers'],
  )
end

CSV.foreach('db/Daytuhbaise - Spells List.csv', headers: true) do |row|
  character.spells.create!(
    spell: row['spell'],
    spell_class: row['spell_class'],
    description: row['description'],
    duration: row['duration'],
    cost_to_cast: row['cost_to_cast'],
    cost_to_maintain: row['cost_to_maintain'],
    time_to_cast: row['time_to_cast'],
    prerequisites: row['prerequisites'],
    difficulty: row['difficulty'],
    spell_college: row['spell_college'],
    item_enchantment: row['item_enchantment'],
  )
end

CSV.foreach('db/Daytuhbaise - Advantages List.csv', headers: true) do |row|
  character.advantages.create!(
    advantage: row['advantage'],
    description: row['description'],
    cost: row['cost'],
  )
end

CSV.foreach('db/Daytuhbaise - Disadvantages List.csv', headers: true) do |row|
  character.disadvantages.create!(
    disadvantage: row['disadvantage'],
    description: row['description'],
    cost: row['cost'],
    self_control: row['self_control'],
  )
end



# Output the number of records created for each table
puts "created #{Skill.count} skills"
puts "created #{Spell.count} spells"
puts "created #{Advantage.count} advantages"
puts "created #{Disadvantage.count} disadvantages"