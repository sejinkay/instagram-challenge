json.extract! post, :id, :message, :img_url, :users_id, :created_at, :updated_at
json.url post_url(post, format: :json)
