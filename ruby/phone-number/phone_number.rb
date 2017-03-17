class PhoneNumber
  def initialize(number_string)
    @raw_number = number_string
    @actual_number = validate_and_return_phone_number
  end

  def number
    @actual_number
  end

  def area_code
    @actual_number[0..2]
  end

  def to_s
    "(#{@actual_number[0..2]}) #{@actual_number[3..5]}-#{@actual_number[6..-1]}"
  end

    private
      def not_valid_phone_number
        "0000000000"
      end

      def validate_and_return_phone_number
        sanitized_number = @raw_number.gsub(/\D/, "")
        return not_valid_phone_number if @raw_number.scan(/\d/).length == 10 && @raw_number.gsub(/\W/, "").length > 10

        if sanitized_number.length < 10 || sanitized_number.length > 11
          not_valid_phone_number
        elsif sanitized_number.length == 11
          if sanitized_number[0] == "1"
            sanitized_number[1..-1]
          else
            not_valid_phone_number
          end
        else
          sanitized_number
        end
      end
end

