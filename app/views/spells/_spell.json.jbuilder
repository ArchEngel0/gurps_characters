json.extract! spell, :id, :spell, :spell_class, :description, :duration, :cost_to_cast, :cost_to_maintain, :time_to_cast, :prerequisites, :difficulty, :spell_college, :item_enchantment, :character_id, :created_at, :updated_at
json.url spell_url(spell, format: :json)
