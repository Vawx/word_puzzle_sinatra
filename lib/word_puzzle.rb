class String
  define_method(:word_puzzle) do
    puzzle_word = self.split(//)
    vowels = ["a", "e", "i", "o", "u"]
    for character in 0..puzzle_word.length - 1
      if vowels.include?(puzzle_word[character].downcase)
        puzzle_word[character] = "-"
      end
    end
    return puzzle_word.join('')
  end
end
