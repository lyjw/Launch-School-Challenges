class PhoneNumber
  INVALID = '0000000000'

  def initialize(num)
    @num = num
  end

  def is_valid?(no)
    !(/[abc]/.match(@num)) && no.size < 11 && no.size > 9
  end

  def number
    clean_number = @num.split("").select { |n| n =~ /\d/ }

    if is_valid?(clean_number)
      clean_number.join()
    elsif clean_number.size == 11 && clean_number[0] == '1'
      clean_number.shift()
      clean_number.join()
    else INVALID
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..9]}"
  end
end
