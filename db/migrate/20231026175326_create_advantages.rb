class CreateAdvantages < ActiveRecord::Migration[7.1]
  def change
    create_table :advantages do |t|
      t.string :advantage
      t.string :description
      t.integer :cost
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
