class MoviesController < ApplicationController
  def index
    @search = Movie.search do
      fulltext params[:search]
    end
    @movies = @search.results
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

end
