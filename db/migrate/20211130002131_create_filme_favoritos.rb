class CreateFilmeFavoritos < ActiveRecord::Migration[5.2]
  def change
    create_table :filme_favoritos do |t|
      t.references :usuario, foreign_key: true
      t.references :filme, foreign_key: true

      t.timestamps
    end
  end
end
