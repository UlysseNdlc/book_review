json.extract! book, :id, :title, :description, :length, :author, :style, :created_at, :updated_at
json.url book_url(book, format: :json)