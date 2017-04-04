module ThemoviedbBase
  def self.config
    @config = Tmdb::Configuration.get
  end

  def tmdb_movie
    @tmdb_movie ||= Tmdb::Search.movie(title).results.first
  end

  def poster_path
    tmdb_movie.poster_path
  end

  def poster_url(size)
    ThemoviedbBase.config.images.secure_base_url + size.to_s + poster_path
  end

  def avg_rating
    tmdb_movie.vote_average
  end

  def plot_overview
    tmdb_movie.overview
  end
end
