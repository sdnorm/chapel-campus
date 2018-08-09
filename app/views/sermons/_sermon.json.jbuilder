json.extract! sermon, :id, :title, :speaker, :date, :created_at, :updated_at
json.url sermon_url(sermon, format: :json)
