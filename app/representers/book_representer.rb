class BookRepresenter
    def initialize(book)
        @book=book
    end
    def as_json
        {
            id: book.id,
            title: book.title,
            author: book.author,
            date_added: book.created_at

        }
    end
    private
    attr_reader :book
end