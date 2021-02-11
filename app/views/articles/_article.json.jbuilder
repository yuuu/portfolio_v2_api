json.extract! article, :id, :title, :body, :image, :link, :created_at, :updated_at
json.publishedAt I18n.l(article.published_at.to_date)
json.url article_url(article, format: :json)
