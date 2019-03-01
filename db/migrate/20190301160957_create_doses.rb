class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.references :cocktail
      t.references :ingredient
      t.string :description

      t.timestamps
    end
  end
end
