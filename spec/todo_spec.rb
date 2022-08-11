require 'todo.rb'

RSpec.describe '#check_todo' do
    it "takes a string and checks if it contains #todo " do
        result = check_todo('#todo')
        expect(result).to eq true
    end

    it "takes a string and checks if it contains #todo " do
        result = check_todo('#TODO')
        expect(result).to eq true
    end
end