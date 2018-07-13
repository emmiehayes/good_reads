require 'rails_helper'

describe 'as a user visiting /books' do
  it 'can see a list of all books' do
    book_1 = Book.create!(title: 'book number 1')
    book_2 = Book.create!(title: 'book number 2')

    visit books_path

    expect(page).to have_content("All Books")
    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_2.title)
  end
end
