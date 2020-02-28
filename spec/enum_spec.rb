require_relative '../enumerable_methods'
require_relative '../enum'

RSpec.describe Enum do
  describe '#add' do
    let(:enum) { Enum.new }
    it 'tests method my_each' do
      expect(enum.test_1_my_each).to eql(2)
      expect(enum.test_2_my_each).to eql('hello hi world oscar angel ')
      expect(enum.test_3_my_each).not_to eql(true)
      expect(enum.test_4_my_each).to eql('hi')
    end
    it 'tests method my_each_with_index' do
      expect(enum.test_1_my_each_with_index).to eql(8)
      expect(enum.test_2_my_each_with_index).to eql(11)
      expect(enum.test_3_my_each_with_index).not_to eql(false)
      expect(enum.test_4_my_each_with_index).to eql('hello world')
    end
    it 'tests method my_select' do
      expect(enum.test_1_my_select).to eql(%w[hi hello])
      expect(enum.test_2_my_select).to eql([])
      expect(enum.test_3_my_select).not_to eql([true])
      expect(enum.test_4_my_select).to eql([8])
    end
    it 'tests method my_all?' do
      expect(enum.test_1_my_all?).not_to eql(true)
      expect(enum.test_2_my_all?).to eql(true)
      expect(enum.test_3_my_all?).to eql(true)
      expect(enum.test_4_my_all?).to eql(true)
    end
    it 'tests method my_any?' do
      expect(enum.test_1_my_any?).to eql(false)
      expect(enum.test_2_my_any?).to eql(false)
      expect(enum.test_3_my_any?).not_to eql(false)
      expect(enum.test_4_my_any?).to eql(false)
    end
    it 'tests method my_none?' do
      expect(enum.test_1_my_none?).not_to eql(true)
      expect(enum.test_2_my_none?).to eql(false)
      expect(enum.test_3_my_none?).to eql(true)
      expect(enum.test_4_my_none?).to eql(true)
    end
    it 'tests method my_count' do
      expect(enum.test_1_my_count).not_to eql(30)
      expect(enum.test_2_my_count).to eql(0)
      expect(enum.test_3_my_count).to eql(0)
      expect(enum.test_4_my_count).to eql(1)
    end
    it 'tests method my_map' do
      expect(enum.test_1_my_map).to eql([2, 4, 6, 8, 10])
      expect(enum.test_2_my_map).to eql([true, false, true, false])
      expect(enum.test_3_my_map).not_to eql(%w[h h w m n i])
      expect(enum.test_4_my_map).to eql([3, 4, 5, 6, 7])
    end
    it 'tests method my_inject' do
      expect(enum.test_1_my_inject).to eql(25)
      expect(enum.test_2_my_inject).not_to eql(20)
      expect(enum.test_3_my_inject).to eql(true)
      expect(enum.test_4_my_inject).to eql('hello world my name is')
    end
  end
end
