require "rspec"
require_relative "#{__dir__}/hashtags.rb"

describe "Findhashtags" do
  it 'should do ok for Hashtags' do
    expect(Findhashtags.hashtags('dave like #milk and #ice-cream')).to eq ['#milk', '#ice-cream']
  end

  it 'should do ok for Hashtags' do
    expect(Findhashtags.hashtags('dave like #milk and #ice_cream')).to eq ['#milk', '#ice_cream']
  end
  
  it 'should do ok for Hashtags' do
    expect(Findhashtags.hashtags('dave like #milk and #ice-cream!')).to eq ['#milk', '#ice-cream']
  end
end