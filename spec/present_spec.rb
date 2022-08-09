require 'present.rb'

RSpec.describe Present do
    it "Incl. argument" do
        box = Present.new()
        box.wrap(10)
        expect(box.unwrap).to eq 10
    end

    it "Fails if we unwrap without wrapping first" do
        box = Present.new()
        expect { box.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "Present already wrapped" do
        box = Present.new()
        box.wrap(10)
        expect { box.wrap(10) }.to raise_error "A contents has already been wrapped."
    end
end
