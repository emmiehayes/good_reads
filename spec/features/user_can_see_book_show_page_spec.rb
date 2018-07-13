require 'rails_helper'

describe 'as a user visiting book_path' do
  it 'can see a single book' do
    book_1 = Book.create!(title: 'book number 1')
    book_2 = Book.create!(title: 'book number 2')
    user_1 = User.create!(name: 'Bob')
    rating_1 = book_1.ratings.create!(body: 'i liked the book', user_id: user_1.id, value: 5)

    visit book_path(book_1)

    expect(page).to have_content(book_1.title)
    expect(page).to_not have_content(book_2.title)
    expect(page).to have_content(user_1.rating_1)
    expect(page).to have_content(rating_1.value)
    expect(page).to have_content('Average Rating: #{book_1.average_rating}')
  end
end


# As a Visitor,
# When I visit a book show page,
# I see a heading that includes the highest rating for that book. (e.g "Highest Rating: 4").
# under the heading for highest rating,
# I see the review text, and the name of the reviewer
# that submitted that review.
# (it's okay if the review is also listed again on the page later with all other reviews)
# I see a header that includes the lowest rating for that book. (e.g "Lowest Rating: 1")
# under the header for lowest rating,
# I see the body of that review and the name of the reviewer
# that submitted that review.
# (it's okay if the review is also listed again on the page later with all other reviews)
