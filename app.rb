require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  @answer = params.fetch('word')
  @no_vowels_word = params.fetch('word').word_puzzle
  erb(:word)
end
