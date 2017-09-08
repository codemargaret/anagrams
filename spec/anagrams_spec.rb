require ('rspec')
require ('pry')
require ('anagrams')

user_words = Words.new(@word_1,@word_2)

describe('#anagrams') do
  it('will tell you if two words are anagrams') do
    expect(user_words.anagrams('ruby','bury')).to(eq("These words are anagrams"))
  end

  it('will tell you if two words are not anagrams') do
    expect(user_words.anagrams('on','jumbotron')).to(eq("These words are not anagrams"))
  end

  it('will ignore capital letters in anagrams') do
    expect(user_words.anagrams('ruBy','bUry')).to(eq("These words are anagrams"))
  end

  it('will ignore capital letters in words that are not anagrams') do
    expect(user_words.anagrams('On','JumboTron')).to(eq("These words are not anagrams"))
  end

  it('will ignore spaces in sentences and phrases') do
    expect(user_words.anagrams('video game','give a demo')).to(eq("These words are anagrams"))
  end

  it('will check for palindromes') do
    expect(user_words.anagrams('avid','diva')).to(eq("These words are palindromes"))
  end


end
