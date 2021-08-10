require_relative 'book'
require_relative 'books_view'

class BooksController
  def initialize(repository)
    @repository = repository
    @view = BooksView.new
  end

  def list
    # 1. Fetch books from repo
    # 2. Send them to view for display
    display_books
  end

  def create
    # 1. Get title from view
    title = @view.ask_user_for_title
    # 2. Create new book
    book = Book.new(title)
    # 3. Add to repository
    @repository.add(book)
  end

  def mark_as_read
    # 1. Display list with indices
    display_books
    # 2. Ask user for index
    index = @view.ask_user_for_index
    # 3. Find book from repo
    book = @repository.find(index)
    # 4. Mark book as read
    book.mark_as_read!
  end

  def destroy
    # 1. Display list with indices
    display_books
    # 2. Ask user for index
    index = @view.ask_user_for_index
    # 3. Remove from repository
    @repository.remove(index)
  end

  private

  def display_books
    books = @repository.all
    @view.display(books)
  end
end
