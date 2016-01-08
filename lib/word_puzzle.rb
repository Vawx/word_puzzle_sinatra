class String
  define_method(:word_puzzle) do
    split_word = self.split(//)
    vowels = ["a", "e", "i", "o", "u"]
    for character in 0..split_word.length - 1
      if vowels.include?(split_word[character])
        split_word[character] = "-"
      end
    end
    return split_word.join('')
  end
end
