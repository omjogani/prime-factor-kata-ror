class PrimeFactor

  def self.calculatePrimeFactor(number)
    raise 'Invalid Number!' if number <= 0

    result = []

    (2..Math.sqrt(number).ceil).each do |i|
      while (number % i).zero?
        result << i
        number /= i
      end
    end

    result << number if number > 2
    result
  end
end
