class Library
  attr_reader :books

  def initialize(books_array)
    @books = books_array
  end

  def get_book_by_title(title)
    for book_hash in @books
      if book_hash[:title] == title
        return book_hash
      end

    end
  end

  # def get_book_by_title
  #   return@books.find{|book_hash| book_hash[:title] == title}
  # end

  def get_rental_details_by_title(title)
    for book_hash in @books
      if book_hash[:title] == title
        return book_hash[:rental_details]
      end
    end
  end
#
  def add_book_by_title(title)
    @books.push({title: title, rental_details: {student_name: "", date: ""}})
  end

  def change_rental_details(title, student, due_date)
    for book_hash in @books
    if book_hash[:title] == title
      book_hash[:student_name] = student
      book_hash[:due_date] = due_date
    end
  end

end
