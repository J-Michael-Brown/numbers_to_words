require('pry')

def numbers_less_than_100(reverse_number, numbers)
if(numbers.keys.include?(reverse_number.reverse.to_i))
    return (numbers.fetch(reverse_number.reverse.to_i))

  else
  ones_place = (reverse_number[0]).to_i
  tens_place = numbers.fetch((reverse_number[1]+'0').to_i) + ' '
  return (tens_place + numbers.fetch(ones_place))
  end
end

def number_to_word(num)
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

  number_words_array = []
  reverse_number = num.to_s.reverse

  if(numbers.keys.include?(num))
    number_words_array.push(numbers.fetch(num))

  else
  if (numbers.keys.include?(reverse_number[2].to_i))
      hundreds_place = (numbers.fetch(reverse_number[2].to_i))+' hundred'
      if hundreds_place != ' hundred'
      number_words_array.push(hundreds_place)
      end
    end
    hundreds_value = reverse_number.slice(2,1).to_i
    tens_and_ones_value = reverse_number.slice(0,2)

    number_words_array.push(numbers_less_than_100(tens_and_ones_value, numbers))



  end
  number_words_array.join(' ')
end
