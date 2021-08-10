class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display books'
    puts '2 - Add a new book'
    puts '3 - Mark a book as read'
    puts '4 - Remove a book'
    puts '---'
  end

  def dispatch(action)
    case action
    # CRUD ACTIONS
    when 1 then @controller.list #-> READ
    when 2 then @controller.create #-> CREATE
    when 3 then @controller.mark_as_read #-> UPDATE
    when 4 then @controller.destroy #-> DELETE
    else
      puts 'Please type 1, 2, 3 or 4 :)'
    end
  end
end
