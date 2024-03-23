class StringCalculator
    class << self
        ERROR_MESSAGE = "negative numbers not allowed "

        def add(string)
            delimiter = ","
            
            #By doing this, the string_values would still have the symbols.
            #But converting to integer(:to_i), it would become 0 and wouldn't alter our final sum.
            #If needed, the symbols can be removed from string after the below computation.
            delimiter = string[2] if string[0..1] == "//"

            string_values = string.split(/#{delimiter}|\s/)

            values = string_values.map(&:to_i)

            negative_numbers = values.select { |num| num < 0 }
            raise Exception.new ERROR_MESSAGE + negative_numbers.join(',') unless negative_numbers.empty?
            
            values.reduce(0, :+)
        end
    end
end