require('rspec')
require('word_puzzle')

describe("String#word_puzzle") do
  it("replaces the vowels in a word with -") do
    expect("areas".word_puzzle).to(eq("-r--s"))
  end
  it("replaces the vowels in a sentence of words with -") do
    expect("Believe you can and you're halfway there. Theodore Roosevelt".word_puzzle).to(eq("B-l--v- y-- c-n -nd y--'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt"))
  end
end
