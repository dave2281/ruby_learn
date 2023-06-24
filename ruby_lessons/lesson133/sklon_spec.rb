require "rspec"
require_relative "/home/dave/ruby_git/ruby_learn/ruby_lessons/lesson133/skloniator.rb"

describe "Skloniator" do
  it 'should do ok for KROKODILOV' do
    expect(Skloniator.sklon(1, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodil'
  end
end
