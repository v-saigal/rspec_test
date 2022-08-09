require 'string_builder.rb'

RSpec.describe StringBuilder do
    it "Checks the length of a string" do
        str = StringBuilder.new()
        str.add('added string')
        result = str.size()
        expect(result).to eq 12
    end

    it "returns string" do
        str = StringBuilder.new()
        str.add('added string')
        result = str.output()
        expect(result).to eq "added string"
    end


end