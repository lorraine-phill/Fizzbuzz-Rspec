require_relative '../lib/fizzbuzz'

describe Fizzbuzz do 
  let(:fizzbuzz) {Fizzbuzz.new}

  it'6 is divisible by three' do 
  	expect(fizzbuzz.is_divisible_by_three?(6)).to be_true 
  end

  it '7 is not divisible by three' do 
  	expect(fizzbuzz.is_divisible_by_three?(7)).to be_false
  end

  it '5 is divisible by five' do
  	expect(fizzbuzz.is_divisible_by_five?(5)).to be_true
  end

  it '9 is not divisible by 5' do
  	expect(fizzbuzz.is_divisible_by_five?(9)).to be_false
  end

  it '15 is divisible by fifteen' do 
  	expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be_true
  end

  it '22 is not divisible by fifteen' do 
  	expect(fizzbuzz.is_divisible_by_fifteen?(22)).to be_false
  end

  it 'prints out Fizz for a multiple of 3' do 
  	expect(fizzbuzz.prints_out_for(3)).to eq 'Fizz'
  end

  it 'prints out Buzz for a multiple of 5' do
    expect(fizzbuzz.prints_out_for(5)).to eq 'Buzz'
  end

  it 'prints out FizzBuzz for a multiple of 3 and 5' do
    expect(fizzbuzz.prints_out_for(15)).to eq 'FizzBuzz'
  end

  it 'prints number 4 for non-multiple of 3 or 5' do
     expect(fizzbuzz.prints_out_for(4)).to eq 4
  end
end

