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

  it('Should return a number from 1 to 9,999') do
    expect(number_to_word(1001)).to(eq("one thousand one"))
  end

  it("Should return a number from 1 to 1,000,000,000,000") do
    expect(number_to_word(1000000000000)).to(eq("one trillion"))
  end

  it("Should return a number from 1 to 40,089,789,009,799") do
    expect(number_to_word(40089789009799)).to(eq("fourty trillion eighty nine billion seven hundred eighty nine million nine thousand seven hundred ninety nine"))
  end

  it("Should return any number you can reasonably count to in this iteration of human evolution.") do
    expect(number_to_word(400897890978982798798798797030978534098340597340957397489876543213)).to(eq("four hundred vigintillion eight hundred ninety seven novemdecillion eight hundred ninety octodecillion nine hundred seventy eight septdecillion nine hundred eighty two sexdecillion seven hundred ninety eight quindecillion seven hundred ninety eight quattuordecillion seven hundred ninety eight tredecillion seven hundred ninety seven duodecillion thirty undecillion nine hundred seventy eight decillion five hundred thirty four nonillion ninety eight octillion three hundred fourty septillion five hundred ninety seven sextillion three hundred fourty quintillion nine hundred fifty seven quadrillion three hundred ninety seven trillion four hundred eighty nine billion eight hundred seventy six million five hundred fourty three thousand two hundred thirteen"))
  end


end
