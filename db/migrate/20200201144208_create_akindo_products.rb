class CreateAkindoProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :akindo_products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
