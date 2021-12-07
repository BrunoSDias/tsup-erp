class FilmeFavorito < ApplicationRecord
  belongs_to :usuario
  belongs_to :filme

  def self.por_preferencia
    FilmeFavorito
    .joins(:filme)
    .group(:filme_id, :nome)
    .select("
      filme_favoritos.filme_id, 
      filmes.nome, 
      count(filme_id) as qnt_favoritos
    ")
    .reorder("count(filme_id) desc")
  end
end
