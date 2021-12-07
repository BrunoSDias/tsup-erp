class FilmesFavoritosController < ApplicationController
  def gerar_relatorio
    FilmeFavoritoJob.perform_later
    redirect_to '/filmes', notice: 'O relatório de filmes favoritos está sendo gerado e estará disponivel em breve'
  end
end
