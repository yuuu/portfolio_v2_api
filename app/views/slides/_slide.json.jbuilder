json.extract! slide, :id, :title, :body, :image, :link, :created_at, :updated_at
json.publishedAt I18n.l(slide.published_at.to_date)
json.url slide_url(slide, format: :json)
