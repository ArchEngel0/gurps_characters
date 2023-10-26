class CreateSpells < ActiveRecord::Migration[7.1]
  def change
    create_table :spells do |t|
      t.string :spell
      t.string :spell_class
      t.string :description
      t.string :duration
      t.string :cost_to_cast
      t.string :cost_to_maintain
      t.string :time_to_cast
      t.string :prerequisites
      t.string :difficulty
      t.string :spell_college
      t.string :item_enchantment
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
