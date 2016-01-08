
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word change path', {:type => :feature}) do
  it('processes the user input and returns thier word with a - for all vowels') do
    visit('/')
    fill_in('word', :with => "Believe")
    click_button('send')
    expect(page).to have_content("B-l--v-")
  end
  it('processes the user input and returns thier words with a - for all vowels') do
    visit('/')
    fill_in('word', :with => "Believe you can and you're halfway there. Theodore Roosevelt")
    click_button('send')
    expect(page).to have_content("B-l--v- y-- c-n -nd y--'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt")
  end
end
