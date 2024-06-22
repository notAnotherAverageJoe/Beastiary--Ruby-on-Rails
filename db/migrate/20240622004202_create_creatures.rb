class CreateCreatures < ActiveRecord::Migration[7.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :creature_type
      t.text :description
      t.text :abilities
      t.string :habitat
      t.string :image
      t.text :legend

      t.timestamps
    end
  end
end
