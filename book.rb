class Book
  attr_reader :title

  def initialize(title)
    # The book should have a title and if it's been read or not
    @title = title
    @read = false
  end

  def read?
    # 1. Return if the book was read or not
    @read
  end

  def mark_as_read!
    # 1. Mark the book as read
    @read = true
  end
end
