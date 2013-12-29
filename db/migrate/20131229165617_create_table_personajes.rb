class CreateTablePersonajes < ActiveRecord::Migration
  def change
    create_table :personajes do |t|
      t.string :gender
      t.string :name
      t.integer :age
      t.integer :fuerza
      t.integer :constitucion
      t.integer :tamano
      t.integer :destreza
      t.integer :apariencia
      t.integer :inteligencia
      t.integer :poder
      t.integer :educacion

      t.timestamps
    end
  end
end
