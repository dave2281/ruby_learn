require 'rspec'
require_relative 'calc.rb'

describe "Calc" do
  let(:sums) {Calc.new(1, 1)}
  let(:minusing) {Calc.new 5, 3}

  it "Summation ERROR" do
    expect(sums.sum).to eq(2)
  end

  it "Minus ERROR" do
    expect(minusing.minus).to eq(2)
  end
end


