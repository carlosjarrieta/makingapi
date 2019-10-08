class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :name
      t.string :surname
      t.string :nit
      t.string :phone
      t.references :area, foreign_key: true

      t.timestamps
    end
    add_index :personas, :nit, unique: true
  end
end
