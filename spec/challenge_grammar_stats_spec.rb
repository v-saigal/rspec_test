require 'challenge_grammar_stats.rb'

RSpec.describe GrammarStats do
    # check method
    context "takes string as input" do
        it "return true if text begins with capital letter and sentence ends with '.'" do
            str_tested = GrammarStats.new()
            result = str_tested.check("This should pass.")
            expect(result).to eq [true]
        end

        it "return true if only two characters in string [0] is upcase and [-1] is '.'" do
            str_tested = GrammarStats.new()
            result = str_tested.check("T.")
            expect(result).to eq [true]
        end
    end

    context "given empty a string" do
        it "fails" do
            str_tested = GrammarStats.new()
            expect { str_tested.check("") }.to raise_error "Must enter text string, minimum 2 characters"
        end
    end

    # percentage_good method
    context "gives every true answer a percentage value out of 100%" do
        it "returns each true value a percentage number from the array length" do
            str = GrammarStats.new()
            str.check("This string should be true.")
            str.check("This should be false")
            str.check("this should be false.")
            str.check("TT")
            str.check("..")
            expect(str.percentage_good).to eq 20
        end
    
    end




end