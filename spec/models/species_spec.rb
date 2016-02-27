require 'rails_helper'

RSpec.describe Species, type: :model do
  it "should save animal in Species table" do
    expect(Species.create(name: 'tiger')).to be_truthy
    expect(Species.first).to be_a(Species)
    expect(Species.first.name).to eq('tiger')
  end
end
