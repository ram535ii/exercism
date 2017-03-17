class PhoneNumber
  INVALID = "0" * 10

  def initialize(number_string)
    @clean_number = clean_phone_number(number_string)
  end

  def number
    @clean_number
  end

  def area_code
    @clean_number[0..2]
  end

  def to_s
    "(#{@clean_number[0..2]}) #{@clean_number[3..5]}-#{@clean_number[6..-1]}"
  end

    private
      def clean_phone_number raw_number
        valid_chars_removed = remove_valid_chars(raw_number)
        country_code_removed = remove_usa_country_code(valid_chars_removed)
        valid_number?(country_code_removed) ? country_code_removed : INVALID
      end

      def remove_valid_chars(raw_number)
        raw_number.gsub(/[\(\)\.\-\s]/, "")
      end

      def remove_usa_country_code(num)
        num.length == 11 && num[0] == "1" ? num[1..-1] : num
      end

      def valid_number?(num)
        num.length == 10 && num.match(/\D/).nil?
      end
end

