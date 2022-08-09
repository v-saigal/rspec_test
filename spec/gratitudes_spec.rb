require 'gratitudes.rb'

RSpec.describe Gratitudes do
    it 'What you are grateful for' do
        grat = Gratitudes.new()
        grat.add('sunlight')
        result = grat.format()
        expect(result).to eq 'Be grateful for: sunlight'
    end

    it 'Multiple things' do
        grat = Gratitudes.new()
        grat.add('sunlight')
        grat.add('air')
        result = grat.format()
        expect(result).to eq 'Be grateful for: sunlight, air'
    end
end