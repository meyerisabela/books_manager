require_relative 'book_repository'
require_relative 'books_controller'
require_relative 'router'

repository = BookRepository.new
controller = BooksController.new(repository)
router = Router.new(controller)
router.run
