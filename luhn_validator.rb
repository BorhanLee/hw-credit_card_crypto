module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct

  #Credit card has 16 numbers
  # @@num_len = 16
  @@weight = 12121212121212121212
  # nums_a = 4696560518849009

  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    total = 0
    num_len = nums_a.length()
    (0..(num_len-1)).each{ |i| 
    result = (nums_a[num_len-i-1].to_i*@@weight.to_s.split("")[i].to_i) 
    result >= 10 ? product = (result%10 + (result/10).floor): product = result
    total += product

    }

    total%10 == 0 ? bool = true : bool = false
    bool
  end
end