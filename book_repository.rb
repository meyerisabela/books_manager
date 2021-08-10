class BookRepository
  def initialize
    # 1. How should we initialize a book repository?
    @books = []
  end

  def add(book)
    # 1. Add a book to the books ?
    @books << book
  end

  def all
    # 1. Return all the books
    @books #-> an array with books instances
  end

  def find(index)
    # 1. Find the book with the given index
    @books[index]
  end

  def remove(index)
    # 1. Remove the book with the given index
    @books.delete_at(index)
  end
end
