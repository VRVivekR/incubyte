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

        context "when the values in the string are separated by , and \n" do
            string = "0,1\n2,3,4\n5"

            it "returns 15" do
                expect(subject.add(string)).to eq 15
            end
        end

        context "when the values in the string are separated by a different delimiter" do
            string = "//;\n0\n1;2\n3;4;5"

            it "returns 15" do
                expect(subject.add(string)).to eq 15
            end
        end

        context "when there are negative numbers in the string" do
            string = "0,-1,2,-3,4,-5"

            it "raises error" do
                expect { subject.add(string) }.to raise_error(Exception, "negative numbers not allowed -1,-3,-5")
            end
        end
    end
end