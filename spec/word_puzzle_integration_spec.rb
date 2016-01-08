
require('capybara/rspec')
require('./app')
require('pry')
require('launchy')
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
  it('processes the user input, including capital letterws, and returns thier words with a - for all vowels') do
    visit('/')
    fill_in('word', :with => "Alice and the other animals convene on the bank and the question among them is how to get dry again.")
    click_button('send')
    expect(page).to have_content("-l-c- -nd th- -th-r -n-m-ls c-nv-n- -n th- b-nk -nd th- q--st--n -m-ng th-m -s h-w t- g-t dry -g--n.")
  end
end
