class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :skill
      t.boolean :tech_level_required
      t.boolean :specialization_required
      t.string :description
      t.string :defaults
      t.string :difficulty
      t.string :attribute_modifiers
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
