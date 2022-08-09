require 'present.rb'

RSpec.describe Present do

    it "Incl. argument" do
        @box = Present.new()
        @box.wrap(10)
        expect(@box.unwrap).to eq 10
    end

end
