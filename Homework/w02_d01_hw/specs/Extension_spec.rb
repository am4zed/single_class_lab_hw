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
      } , book )
    end
  end
