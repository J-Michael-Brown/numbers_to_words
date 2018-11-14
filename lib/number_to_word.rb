require('pry')

def numbers_less_than_100(reverse_number, numbers)
  if(numbers.keys.include?(reverse_number.reverse.to_i))
    return (numbers.fetch(reverse_number.reverse.to_i))

    else
    if reverse_number[0] != 0
      ones_place = (reverse_number[0]).to_i
    end
    if reverse_number[1] != 0
    tens_place = numbers.fetch((reverse_number[1]+'0').to_i) + ' '
    end
    return (tens_place + numbers.fetch(ones_place))
  end
end

def numbers_less_than_1000(num, number_words_array)
numbers = Hash.new()
  numbers.store(0,"")
  numbers.store(00,"")
  numbers.store(1,"one")
  numbers.store(2,"two")
  numbers.store(3,"three")
  numbers.store(4,"four")
  numbers.store(5,"five")
  numbers.store(6,"six")
  numbers.store(7,"seven")
  numbers.store(8,"eight")
  numbers.store(9,"nine")
  numbers.store(10,"ten")
  numbers.store(20,"twenty")
  numbers.store(30,"thirty")
  numbers.store(40,"fourty")
  numbers.store(50,"fifty")
  numbers.store(60,"sixty")
  numbers.store(70,"seventy")
  numbers.store(80,"eighty")
  numbers.store(90,"ninety")
  numbers.store(11,"eleven")
  numbers.store(12,"twelve")
  numbers.store(13,"thirteen")
  numbers.store(14,"fourteen")
  numbers.store(15,"fifteen")
  numbers.store(16,"sixteen")
  numbers.store(17,"seventeen")
  numbers.store(18,"eighteen")
  numbers.store(19,"nineteen")

  if(numbers.keys.include?(num))
    number_words_array.push(numbers.fetch(num))
  else
  if (numbers.keys.include?(num[2].to_i))
      hundreds_place = (numbers.fetch(num[2].to_i))+' hundred'
      if hundreds_place != ' hundred'
      number_words_array.push(hundreds_place)
      end
    end
    hundreds_value = num.slice(2,1).to_i
    tens_and_ones_value = num.slice(0,2)

    lower_digits = numbers_less_than_100(tens_and_ones_value, numbers)

    if lower_digits != ''
      number_words_array.push(lower_digits)
    end
  end
end

def number_to_word(input_num)

  literally_anything_we_want = Hash.new()
  literally_anything_we_want.store(1, '')
  literally_anything_we_want.store(2, 'thousand')
  literally_anything_we_want.store(3, 'million')
  literally_anything_we_want.store(4, 'billion')
  literally_anything_we_want.store(5, 'trillion')
  literally_anything_we_want.store(6, 'quadrillion')
  literally_anything_we_want.store(7, 'quintillion')
  literally_anything_we_want.store(8, 'sextillion')
  literally_anything_we_want.store(9, 'septillion')
  literally_anything_we_want.store(10, 'octillion')
  literally_anything_we_want.store(11, 'nonillion')
  literally_anything_we_want.store(12, 'decillion')
  literally_anything_we_want.store(13, 'undecillion')
  literally_anything_we_want.store(14, 'duodecillion')
  literally_anything_we_want.store(15, 'tredecillion')
  literally_anything_we_want.store(16, 'quattuordecillion')
  literally_anything_we_want.store(17, 'quindecillion')
  literally_anything_we_want.store(18, 'sexdecillion')
  literally_anything_we_want.store(19, 'septdecillion')
  literally_anything_we_want.store(20, 'octodecillion')
  literally_anything_we_want.store(21, 'novemdecillion')
  literally_anything_we_want.store(22, 'vigintillion')

  number_words_array = []

  reverse_number = input_num.to_s.reverse.split('')
  super_array = reverse_number.each_slice(3).to_a.reverse

  thousands_position = super_array.length

  super_array.each do |array|
    num = array.join
    numbers_less_than_1000(num, number_words_array)
    if thousands_position > 1 && num != '000'
      number_words_array.push(literally_anything_we_want.fetch(thousands_position))
    end
    thousands_position -= 1
  end
  number_words_array.join(' ')
end
