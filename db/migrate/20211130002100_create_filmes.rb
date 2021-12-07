class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.integer :classificacao
      t.integer :nota

      t.timestamps
    end
  end
end
