require_relative '../enumerable_methods'
require_relative '../enum'

RSpec.describe Enum do
  let(:enum) { Enum.new }
  describe 'my_each' do
    it 'tests method my_each' do
      expect(enum.test_1_my_each).to eql(2)
    end
    it 'tests method my_each' do
      expect(enum.test_2_my_each).to eql('hello hi world oscar angel ')
    end
    it 'tests method my_each' do
      expect(enum.test_3_my_each).not_to eql(true)
    end
    it 'tests method my_each' do
      expect(enum.test_4_my_each).to eql('hi')
    end
  end
  describe 'my_each_with_index' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_each_with_index).to eql(8)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_each_with_index).to eql(11)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_each_with_index).not_to eql(false)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_each_with_index).to eql('hello world')
    end
  end
  describe 'my_select' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_select).to eql(%w[hi hello])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_select).to eql([])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_select).not_to eql([true])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_select).to eql([8])
    end
  end
  describe 'my_all?' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_all?).not_to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_all?).to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_all?).to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_all?).to eql(true)
    end
  end
  describe 'my_any?' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_any?).to eql(false)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_any?).to eql(false)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_any?).not_to eql(false)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_any?).to eql(false)
    end
  end
  describe 'my_none' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_none?).not_to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_none?).to eql(false)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_none?).to eql(true)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_none?).to eql(true)
    end
  end
  describe 'my_count' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_count).not_to eql(30)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_count).to eql(0)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_count).to eql(0)
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_count).to eql(1)
    end
  end
  describe 'my_map' do
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_map).to eql([2, 4, 6, 8, 10])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_2_my_map).to eql([true, false, true, false])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_3_my_map).not_to eql(%w[h h w m n i])
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_4_my_map).to eql([3, 4, 5, 6, 7])
    end
  end
  describe 'my_inject' do
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
