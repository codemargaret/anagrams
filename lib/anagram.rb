class Anagram
  include Enumerable
  attr_reader :input_1, :input_2

  def initialize(input_1,input_2)
    @input_1 = input_1.downcase
    @input_2 = input_2.downcase
  end

  def split_into_words(input)
    input.split(" ")
  end

  def remove_punctuation(input)
    input.gsub(/\W+/, '')
  end

  def split_into_letters(input)
    input.gsub(/\W+/, '').split("")
  end

  def is_word
    real_words = []
    not_words = []

    input_1_words = split_into_words(@input_1)
    input_2_words = split_into_words(@input_2)

    words_from_both = input_1_words.concat(input_2_words)

    words_from_both.each do |word|
      if (word.include?("a")) || (word.include?("e")) || (word.include?("i")) || (word.include?("o")) || (word.include?("u")) || (word.include?("y"))
        real_words.push(word)
      else
        not_words.push(word)
      end
    end

    if not_words.any?
      "You need to input actual words!"
    end
  end

  def antigrams
    letter_matches = []
    trues = []

    no_punc_1 = remove_punctuation(@input_1)
    no_punc_2 = remove_punctuation(@input_2)
    input_1_letters = split_into_letters(@input_1)
    input_2_letters = split_into_letters(@input_2)

    input_1_letters.each() do |letter|
      letter_matches.push(no_punc_2.match?(letter))
    end

    input_2_letters.each() do |letter|
      letter_matches.push(no_punc_1.match?(letter))
    end

    letter_matches.each() do |true_false|
      true_false_str = true_false.to_s
      if (true_false_str == "true")
        trues.push(true_false_str)
      end
    end

    if trues.empty?
      "These words have no letter matches and are antigrams!"
    end
  end

  def palindromes
    no_punc_1 = remove_punctuation(@input_1)
    no_punc_2 = remove_punctuation(@input_2)

    input_2_rev = no_punc_2.reverse

    if (no_punc_1 == input_2_rev)
      "These words are palindromes"
    end
  end

  def anagrams
    letter_matches = []

    no_punc_1 = remove_punctuation(@input_1)
    no_punc_2 = remove_punctuation(@input_2)
    input_1_letters = split_into_letters(@input_1)
    input_2_letters = split_into_letters(@input_2)

    input_1_letters.each() do |letter|
      letter_matches.push(no_punc_2.match?(letter))
    end

    input_2_letters.each() do |letter|
      letter_matches.push(no_punc_1.match?(letter))
    end

    if (letter_matches.include?(false))
      "These words are not anagrams"
    else
      "These words are anagrams"
    end
  end
end
