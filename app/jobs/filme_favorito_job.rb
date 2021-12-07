class FilmeFavoritoJob < ApplicationJob
  require 'csv'
  queue_as :relatorios

  def perform
    CSV.open(Rails.root.join("public", "favoritos.csv"), "wb") do |csv|
      csv << ["Id", "Filme", "Qntd Favoritos"]
      FilmeFavorito.por_preferencia.each do |favorito|
        csv << [favorito.filme_id, favorito.nome, favorito.qnt_favoritos]
      end
    end
  end
end
