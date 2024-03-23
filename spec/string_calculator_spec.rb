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
    end
end