
require 'spec_helper'

describe "Money"  do 
let(:money1) {Money.new(2,20)}
let(:money2) {Money.new(2,20)}
let(:money3) {Money.new(2,20)}
let(:sum1) {Money.new(6,60)}
let(:sum2) {Money.new(4,40)}
let(:sum3) {Money.new(0,0)}

it "Adds three money vakues" do
 expect((money1 + money2 + money3)).to eq(sum1)
end

it "Adds two money values" do
 expect((money1 + money2)).to eq(sum2)
end

it "Subtarcts two money values"  do
 expect((money1 - money2)).to eq(sum3)
end

 it 'should display as a string' do
  expect(money1.to_s).to eq("Rs 2& 20 paise")
 end

describe 'Equality' do
   it 'should follow reflexivity' do
     expect(money1).to eq(money1)
   end

   it 'should follow symmetry' do
     expect(money1 == money2). to eq(money2== money1)
   end

   it 'should compare money object with nil' do
     expect(money1 == nil).to be false
   end

   it 'should compare money object with object of different Class' do
     expect(money1).not_to eq(1)
   end

end 
end