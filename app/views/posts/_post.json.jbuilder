json.extract! post, :id, :title, :recorded_on, :created_at, :updated_at
json.url post_url(post, format: :json)
