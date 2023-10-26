class CreateDisadvantages < ActiveRecord::Migration[7.1]
  def change
    create_table :disadvantages do |t|
      t.string :disadvantage
      t.string :description
      t.integer :cost
      t.string :self_control
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
