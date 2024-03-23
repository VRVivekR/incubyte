require "string_calculator"

describe StringCalculator do
    describe ".add" do
        let(:subject) { StringCalculator }
        
        context "when string is empty" do
            string = ""

            it "returns 0" do
                expect(subject.add(string)).to eq 0
            end
        end

        context "when the values in the string are separated by , only" do
            string = "0,1,2,3,4,5"

            it "returns 15" do
                expect(subject.add(string)).to eq 15
            end
        end
    end
end