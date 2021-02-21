json.extract! book, :id, :title, :description, :link, :key, :created_at, :updated_at
json.image Image.cdn_url(book.key)
json.url book_url(book, format: :json)
