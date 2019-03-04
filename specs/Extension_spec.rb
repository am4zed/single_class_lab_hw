# Extension_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../Extension')

class TestLibrary < MiniTest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff Bridges",
          date: "01/12/18"
        }
      },
      {
        title: "Dune",
        rental_details: {
          student_name: "Clive Johnson",
          date: "05/05/18"
        }
      },
      {
        title: "Catcher_in_the_rye",
        rental_details: {
          student_name: "John Jonsen",
          date: "05/05/18"
        }
      }
    ]
  end


  def test_get_book_by_title
    library = Library.new(@books)
    book = library.get_book_by_title("Dune")
    assert_equal({
      title: "Dune",
      rental_details: {
        student_name: "Clive Johnson",
        date: "05/05/18"
      }
      }, book)
  end

def test_get_rental_details_by_title
  library = Library.new(@books)
  book = library.get_rental_details_by_title("Catcher_in_the_rye")
  assert_equal("{
    student_name: "John Jonsen",
    date: "05/05/18"
    }", book )
end

def test_add_book_by_title
  library = Library.new(@books)
  new_book = library.add_book_by_title("Birdsong")
  assert_equal(true, new_book.include?)
end

def test_change_rental_details
  library = Library.new(@books)
  changed_rental_details = library.change_rental_details("Dune", "Mary Berry", "27/05/18")
  assert_equal({
    student_name: "Mary Berry",
    date: "27/05/18"
  }, changed_rental_details)
end




end
