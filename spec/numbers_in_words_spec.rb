require('rspec')
require('numbers_in_words')

describe('coverts numbers into words') do
  it('will return "one" for 1') do
    numbers_in_words(1).should(eq("one"))
  end

it('will return "two" for 2') do
    numbers_in_words(2).should(eq("two"))
  end

it('will return "three" for 3') do
    numbers_in_words(3).should(eq("three"))
  end

it('will return "ten" for 10') do
    numbers_in_words(10).should(eq("ten"))
  end

  it('will return the word of the number inputed') do
    numbers_in_words(22).should(eq("twenty-two"))
  end

  it('returns "three hundred sixteen" for 316') do
    numbers_in_words(316).should eq 'three hundred sixteen'
  end
end
