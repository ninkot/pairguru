module ThemoviedbBase
  def tmdb_movie
    @tmdb_movie ||= Tmdb::Search.movie(title).results.first
  end

  def poster
    tmdb_movie.poster_path
  end

  def avg_rating
    tmdb_movie.vote_average
  end

  def plot_overview
    tmdb_movie.overview
  end
end
