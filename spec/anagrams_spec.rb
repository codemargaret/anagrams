require ('rspec')
require ('pry')
require ('anagrams')

user_words = Words.new(@unput_1,@input_2)

describe('#anagrams') do
  it('will tell you if two words are anagrams') do
    expect(user_words.anagrams('ruby','bury')).to(eq("These words are anagrams"))
  end

  it('will tell you if two words are not anagrams') do
    expect(user_words.anagrams('on','jumbotron')).to(eq("These words are not anagrams"))
  end

  it('will ignore capital letters') do
    expect(user_words.anagrams('ruBy','bUry')).to(eq("These words are anagrams"))
  end

  it('will ignore spaces') do
    expect(user_words.anagrams('video game','give a demo')).to(eq("These words are anagrams"))
  end

  it('will check for palindromes') do
    expect(user_words.palindromes('avid','diva')).to(eq("These words are palindromes"))
  end

  it('will require words with vowels') do
    expect(user_words.is_word('why hmph', 'she is an unbelievable diva')).to(eq("You need to input actual words!"))
  end

  it('will check for antigrams') do
    expect(user_words.antigrams('hi', 'bye')).to(eq("These words have no letter matches and are antigrams!"))
  end

  it('will ignore punctuation') do
    expect(user_words.anagrams("Anti-democratic time table", "Dictator came in, bet I'm late!")).to(eq("These words are anagrams"))
  end
end
