require ('rspec')
require ('pry')
require ('anagrams')

user_words = Words.new()

describe('#anagrams') do
  # it('will split a word into letters') do
  #   expect(user_words.anagrams('on')).to(eq(['o','n']))
  # end

  # it('will see if the first letter of word_1 matches any letters in word_2') do
  #   expect(user_words.anagrams('on','jumbotron')).to(eq(true))
  # end

  it('will test for letter matches in word_1 and word_2 and push those results to an array') do
    expect(user_words.anagrams('on','in')).to(eq([false, true, false, true]))
  end
end
