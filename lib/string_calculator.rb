class StringCalculator
    class << self
        def add(string)
            delimiter = ","
            
            #By doing this, the string_values would still have the symbols.
            #But converting to integer(:to_i), it would become 0 and wouldn't alter our final sum.
            #If needed, the symbols can be removed from string after the below computation.
            delimiter = string[2] if string[0..1] == "//"

            string_values = string.split(/#{delimiter}|\s/)

            values = string_values.map(&:to_i)

            values.reduce(0, :+)
        end
    end
end