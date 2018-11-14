require('number_to_word.rb')
require('rspec')

describe('number_to_word') do
  it('Should return the number 1 as the word "one"') do
    expect(number_to_word(1)).to(eq("one"))
  end

  it('Should return any number from 1 to 19') do
    expect(number_to_word(12)).to(eq("twelve"))
  end

  it('Should return any number from 1 to 99') do
    expect(number_to_word(84)).to(eq("eighty four"))
  end

  it('Should return any number from 1 to 999') do
    expect(number_to_word(184)).to(eq("one hundred eighty four"))
  end
end
