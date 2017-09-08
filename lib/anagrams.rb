class Words
  include Enumerable

  def initialize(word_1,word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def anagrams(word_1, word_2)
    sm_word_1 = word_1.downcase
    sm_word_2 = word_2.downcase
    word_1_array = sm_word_1.split(" ")
    word_2_array = sm_word_2.split(" ")
    words_from_both = word_1_array.concat(word_2_array)
    real_words = []
    not_words = []

    words_from_both.each do |word|
      if (word.include?("a")) || (word.include?("e")) || (word.include?("i")) || (word.include?("o")) || (word.include?("u")) || (word.include?("y"))
        real_words.push(word)
      else
        not_words.push(word)
      end
    end

    no_punc_1 = sm_word_1.gsub(/\W+/, '')
    no_punc_2 = sm_word_2.gsub(/\W+/, '')
    word_2_rev = no_punc_2.reverse
    word_1_letters = no_punc_1.split("")
    word_2_letters = no_punc_2.split("")
    letter_matches = []
    trues = []

    word_1_letters.each() do |letter|
      letter_matches.push(no_punc_2.match?(letter))
    end

    word_2_letters.each() do |letter|
      letter_matches.push(no_punc_1.match?(letter))
    end

    letter_matches.each() do |true_false|
      true_false_str = true_false.to_s
      if (true_false_str == "true")
        trues.push(true_false_str)
      end
    end

    if not_words.any?
      # not_words
      "You need to input actual words!"
    elsif trues.empty?
      "These words have no letter matches and are antigrams!"
    elsif (letter_matches.include?(false))
      "These words are not anagrams"
    elsif (sm_word_1 == word_2_rev)
      "These words are palindromes"
    else
      "These words are anagrams"
    end
  end #anagrams method

end #Words class
