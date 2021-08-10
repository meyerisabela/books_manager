class BooksView
  def display(books)
    # 1. Get every book there is
    books.each_with_index do |book, index|
    # 2. Is it read or not?
      read = book.read? ? '[X]' : '[ ]'
    # 3. Print the book title + if this book has been read or not
      puts "#{index + 1} - #{read} - #{book.title}"
    end
  end
  # 1 - [X] Jumanji
  # 2 - [ ] Harry Potter

  def ask_user_for_title
    # 1. Ask the user for the book title
    puts 'Whats your book title?'
    # 2. Get the user answer
    gets.chomp
    # user_input = gets.chomp
    # user_input
  end

  def ask_user_for_index
    # 1. Ask for the index of the book
    puts 'Whats your index?'
    # 2. Return the index (should the index be the same number that the user input?)
    gets.chomp.to_i - 1
  end
end
