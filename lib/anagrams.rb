class Words

  def anagrams(word_1, word_2)
    word_1_letters = word_1.split("")
    word_2_letters = word_2.split("")

    letter_matches = []
    # letter_matches_strings = []

    word_1_letters.each() do |letter|
      letter_matches.push(word_2.match?(letter))
    end

    word_2_letters.each() do |letter|
      letter_matches.push(word_1.match?(letter))
    end

    if (letter_matches.include?(false))
      "These words are not anagrams"
    else
      "These words are anagrams"
    end
  end #anagrams method

end #Words class
