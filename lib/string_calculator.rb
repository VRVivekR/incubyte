class StringCalculator
    class << self
        def add(string)
            string_values = string.split(',')
            
            values = string_values.map(&:to_i)

            values.reduce(0, :+)
        end
    end
end