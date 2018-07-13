describe 'as a user'
  context 'when visiting /books'
    it 'can see a list of all books'
      book_1 = Book.create!(title: 'book number 1')
      book_2 = Book.create!(title: 'book number 2')

      visits books_path

      expect(page).to have_content("All Books")
      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_2.title)
    end
  end
end
