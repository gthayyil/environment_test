# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with:'harry potter'
    fill_in 'Author', with:'J.K. Rowling'
    select '2020', :from => 'book_published_date_1i'
    select 'February', :from => 'book_published_date_2i'
    select '3', :from => 'book_published_date_3i'
    fill_in 'Price', with: 45
   
    
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('2020-02-03')
    expect(page).to have_content(45)
   
  end
end