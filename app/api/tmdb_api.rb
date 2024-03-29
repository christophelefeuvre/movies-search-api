class TmdbApi

  BASE_URL="https://api.themoviedb.org/3/search/movie"
  def initialize(params)
    @title = params['title']
    @page = params['page'].nil? ? 1 : params['page'].to_i
    @connection = Faraday.new(
      url: BASE_URL,
      params: {
        api_key: 'a99cc60fc2b34dbb18cb806b8a88ed14',
        query: @title,
        page: @page
      },
      headers: {'Content-Type' => 'application/json'}
    )
  end
  def search_by_title
    body = @connection.get.body
    body_hash = JSON.parse(body)

    response = {
      'page' => body_hash['page'],
      'results' => []
    }
    body_hash['results'].each do |movie|
      response['results'] << {
        'popularity' => movie['popularity'],
        'overview' => movie['overview'],
        'release_date' => movie['release_date'],
        'title' => movie['title']
      }
    end
    response
  end
end