class PhoneNumber
  INVALID = "0" * 10
  USA_COUNTRY_CODE = "1"
  USA_NUM_LENGTH = 10

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
      def clean_phone_number(raw_number)
        num_without_valid_chars = remove_valid_chars(raw_number)
        country_code_free_num = remove_usa_country_code(num_without_valid_chars)
        valid_number?(country_code_free_num) ? country_code_free_num : INVALID
      end

      def remove_valid_chars(num)
        num.gsub(/[\(\)\.\-\s]/, "")
      end

      def remove_usa_country_code(num)
        return num[1..-1] if num.length == USA_NUM_LENGTH + 1 && num[0] == USA_COUNTRY_CODE
        num
      end

      def valid_number?(num)
        num.length == USA_NUM_LENGTH && num.match(/\D/).nil?
      end
end

