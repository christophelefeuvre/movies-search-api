class MovieService

  def initialize(params, people)
    @title = params[:title]
    @description = params[:description]
    @release_date = params[:release_date]
    @people = people
  end
  def create_movie
    @movie = Movie.new(
      title: @title,
      description: @description,
      release_date: @release_date

    )
    @movie.people << @people if @people
    @movie
  end
end