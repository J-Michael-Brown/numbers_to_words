require('number_to_word.rb')
require('rspec')

describe('number_to_word') do
  it('Should return the number 1 as the word "one"') do
    expect(number_to_word(1)).to(eq("one"))
  end
end
