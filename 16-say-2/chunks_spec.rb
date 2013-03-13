require './chunks'
require 'rspec'

describe Chunks do

  let(:chunks){Chunks.new(1234567890)}

  describe 'initialize' do
    it "takes an integer" do
      expect(chunks.num).to eq 1234567890
    end
  end

  describe 'verify' do
    it "verifies the num is good" do
      expect(chunks.verify).to eq true
    end

    it "verifies bad num is bad" do
      bad = Chunks.new(-1)
      expect(bad.verify).to eq false
    end
  end

  describe 'split' do
    it "splits the num into chunks" do
      expect(chunks.split).to eq [1, 234, 567, 890]
    end

    it "splits the num into chunks" do
      other = Chunks.new(1000)
      expect(other.split).to eq [0, 0, 1, 0]
    end
  end
end