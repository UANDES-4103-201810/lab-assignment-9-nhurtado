json.extract! movie, :id, :title, :description, :duration, :category_id, :director_id, :release_date, :address_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
