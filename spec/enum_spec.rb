require_relative '../enumerable_methods'
require_relative '../enum'

RSpec.describe Enum do
  let(:enum) { Enum.new }
  describe 'tests method my_each' do
    it 'tests sum of numbers' do
      expect(enum.test_1_my_each).to eql(2)
    end
    it 'tests string concatenation' do
      expect(enum.test_2_my_each).to eql('hello hi world oscar angel ')
    end
    it 'tests boolean operation, return must be different to true' do
      expect(enum.test_3_my_each).not_to eql(true)
    end
    it 'tests string concatenation if condition' do
      expect(enum.test_4_my_each).to eql('hi')
    end
  end
  describe 'tests method my_each_with_index' do
    it 'tests sum of uneven numbers' do
      expect(enum.test_1_my_each_with_index).to eql(8)
    end
    it 'tests sum of even numbers' do
      expect(enum.test_2_my_each_with_index).to eql(11)
    end
    it 'tests boolean operations, using && for even items and || for uneven numbers, return different to false' do
      expect(enum.test_3_my_each_with_index).not_to eql(false)
    end
    it 'concat string when index is bigger than zero' do
      expect(enum.test_4_my_each_with_index).to eql('hello world')
    end
  end
  describe 'tests method my_select' do
    it 'selects from an array of strings, when first character is zero' do
      expect(enum.test_1_my_select).to eql(%w[hi hello])
    end
    it 'select where last character of the item is a vowel' do
      expect(enum.test_2_my_select).to eql(%w[hi hello])
    end
    it 'selects when items is equal to false, return must be different to [true]' do
      expect(enum.test_3_my_select).not_to eql([true])
    end
    it 'selects when item is less than or equal to 8' do
      expect(enum.test_4_my_select).to eql([8])
    end
  end
  describe 'tests method my_all?' do
    it 'tests if all the items are different to false nil. Return must be different to true' do
      expect(enum.test_1_my_all?).not_to eql(true)
    end
    it 'tests if all items are from integer class' do
      expect(enum.test_2_my_all?).to eql(true)
    end
    it 'tests if all items have a z character' do
      expect(enum.test_3_my_all?).to eql(true)
    end
    it 'tests if all numbers are equal to 1' do
      expect(enum.test_4_my_all?).to eql(true)
    end
  end
  describe 'tests method my_any?' do
    it 'tests if any item is different to false and nil' do
      expect(enum.test_1_my_any?).to eql(false)
    end
    it 'tests if any item is part from integer class' do
      expect(enum.test_2_my_any?).to eql(false)
    end
    it 'tests if it is not true that any item has the z character' do
      expect(enum.test_3_my_any?).not_to eql(false)
    end
    it 'tests if any item is equal to 1' do
      expect(enum.test_4_my_any?).to eql(false)
    end
  end
  describe 'tests method my_none?' do
    it 'tests if any item is equal to nil or false' do
      expect(enum.test_1_my_none?).not_to eql(true)
    end
    it 'tests if no item is from integer class' do
      expect(enum.test_2_my_none?).to eql(false)
    end
    it 'tests if no item is from integer class' do
      expect(enum.test_3_my_none?).to eql(true)
    end
    it 'tests if no item is equal to 1' do
      expect(enum.test_4_my_none?).to eql(true)
    end
  end
  describe 'tests method my_count' do
    it 'tests that number of items is not 1' do
      expect(enum.test_1_my_count).not_to eql(1)
    end
    it 'tests that not item is equals to Integer class' do
      expect(enum.test_2_my_count).to eql(0)
    end
    it 'tests that not item is equals to /d/ regex expression' do
      expect(enum.test_3_my_count).to eql(0)
    end
    it 'counts item which are equal to 1' do
      expect(enum.test_4_my_count).to eql(1)
    end
  end
  describe 'tests method my_map' do
    it 'multiply by 2 each element of the array' do
      expect(enum.test_1_my_map).to eql([2, 4, 6, 8, 10])
    end
    it 'return an array with the negation of each boolean expression' do
      expect(enum.test_2_my_map).to eql([true, false, true, false])
    end
    it 'return an array with the first character of each item' do
      expect(enum.test_3_my_map).not_to eql(%w[h h w m n i])
    end
    it 'sum 2 to each element of the array' do
      expect(enum.test_4_my_map).to eql([3, 4, 5, 6, 7])
    end
  end
  describe 'tests method my_inject' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_inject).to eql(25)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_inject).not_to eql(20)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_inject).to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_inject).to eql('hello world my name is')
    end
  end
end
