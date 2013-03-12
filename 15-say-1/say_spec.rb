require './say'
require 'rspec'

describe Say do

  describe "#in_english" do
    context "the number is between 20 and 99" do
      it "returns the number in english" do 
        num = Say.new(22)
        expect( num.in_english ).to eq "twenty-two"
      end
    end

    context "the number is between 1 and 19" do
      it "returns the number in english" do
        num = Say.new(14)
        expect( num.in_english ).to eq 'fourteen'
      end
    end

    context "the number is less than 1" do
      it "returns an arguement error" do 
        num = Say.new(-1)
        expect( num.in_english ).to eq ArgumentError
      end
    end
  end

  describe ".verify" do
    it "verifies the bad value is invalid" do
      num = Say.new(-12)
      expect( num.verify ).to be false
    end

    it "verifies good value is valid" do
      num = Say.new(22)
      expect( num.verify ).to be true
    end
  end


end