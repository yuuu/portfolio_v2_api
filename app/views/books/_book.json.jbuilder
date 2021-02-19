json.extract! book, :id, :title, :description, :link, :key, :created_at, :updated_at
json.image Image.signed_url(book.key, :get_object)
json.url book_url(book, format: :json)
