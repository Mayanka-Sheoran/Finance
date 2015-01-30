require 'spec_helper'

describe "Money"  do 
let(:money1) {Money.new(2,20)}
let(:money2) {Money.new(2,20)}
let(:money3) {Money.new(2,20)}
let(:sum1) {Money.new(6,60)}
let(:sum2) {Money.new(4,40)}

it "Adds three money vakues" do
 expect((money1 + money2 + money3)).to eq(sum1)
end

it "Adds two money values" do
 expect((money1 + money2)).to eq(sum2)
end
end