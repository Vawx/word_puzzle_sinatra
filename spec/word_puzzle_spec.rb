require('rspec')
require('word_puzzle')

describe("String#word_puzzle") do
  it("replaces the vowels in a word with -") do
    expect("areas".word_puzzle).to(eq("-r--s"))
  end
end
