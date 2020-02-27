require_relative '../enumerable_methods'

class Enum

  def test_1_my_each
    counter = 0
    [1, 2, 3, 6, 7].my_each {|x| counter = x % 2 == 0 ? counter+1 : counter}
    return counter
  end

  def test_2_my_each
    concat = ''
    %w[hello hi world oscar angel].my_each {|x| concat += x+' '}
    return concat
  end

  def test_3_my_each
    logic = true
    [true, false, true, true].my_each {|x| logic  = logic && x}
    return logic
  end

  def test_4_my_each
    concat = ''
    %w[hello hi world oscar angel].my_each {|x| concat = x.length<4 ? concat + x : concat}
    return concat
  end

  def test_1_my_each_with_index
    counter = 0
    [1, 2, 3, 6, 7].my_each_with_index {|x, i| counter = i % 2 != 0? counter + x : counter}
    return counter
  end

  def test_2_my_each_with_index
    counter = 0
    [1, 2, 3, 6, 7].my_each_with_index {|x, i| counter = i % 2 == 0? counter + x : counter}
    return counter
  end

  def test_1_my_select
    return %w[hi hello world oscar].my_select {|x| x[0] == 'h' }
  end

  def test_2_my_select
    return %w[hi hello world oscar].my_select {|x| x[0] == 'z' }
  end

  def test_3_my_select
    return [true, false, true, true].my_select {|x| x == false }
  end
  
  def test_4_my_select
    return [7, 8, 9, 11].my_select {|x| x == 8 }
  end

  def test_1_my_all?
    [1, 2, false].my_all?
  end

  def test_2_my_all?
    [1, 2, 3].my_all?(Integer)
  end

  def test_3_my_all?
    %w[dog door rod blade].my_all?(/d/)
  end

  def test_4_my_all?
    [1, 1, 1].my_all?(1)
  end

  def test_1_my_any?
    [nil, nil, false].my_any?
  end

  def test_2_my_any?
    ["", "", 3.2].my_any?(Integer)
  end

  def test_3_my_any?
    %w[bless clam dos lola].my_any?(/d/)
  end

  def test_4_my_any?
    [5, 2, 3].my_any?(1)
  end

  def test_1_my_none?
    [nil, false, 1].my_none?
  end

  def test_2_my_none?
    ["", "", 3].my_none?(Integer)
  end

  def test_3_my_none?
    %w[bless clam buzz lola].my_none?(/d/)
  end

  def test_4_my_none?
    [5, 2, 3].my_none?(1)
  end

  def test_1_my_count
    [nil, false, 1].my_count
  end

  def test_2_my_count
    ["", "", 3].my_count(Integer)
  end

  def test_3_my_count
    %w[bless clam dos lola].my_count(/d/)
  end

  def test_4_my_count
    [1, 2, 3].my_count(1)
  end

  def test_1_my_map
    [1, 2, 3, 4, 5].my_map{|x| x * 2 }
  end

  def test_2_my_map
    [false, true, false, true].my_map {|x| !x }
  end

  def test_3_my_map
    %w[hi hello world my name].my_map {|x| x[0] }
  end

  def test_4_my_map
    [1, 2, 3, 4, 5].my_map{|x| x + 2 }
  end

# puts [nil, false, 1].my_count
# puts ["", "", 3].my_count(Integer)
# puts %w[bless clam dos lola].my_count(/d/)
# puts [1, 2, 3].my_count(1)
end

RSpec.describe Enum do
  describe "#add" do
    enum = Enum.new
    it "testing method my_each" do
      expect(enum.test_1_my_each).to eql(2)
      expect(enum.test_2_my_each).to eql('hello hi world oscar angel ')
      expect(enum.test_3_my_each).to eql(false)
      expect(enum.test_4_my_each).to eql('hi')
    end
    it "testing method my_each_with_index" do
      expect(enum.test_1_my_each_with_index).to eql(8)
      expect(enum.test_2_my_each_with_index).to eql(11)
    end
    it "testing method my_select" do
      expect(enum.test_1_my_select).to eql(%w[hi hello])
      expect(enum.test_2_my_select).to eql([])
      expect(enum.test_3_my_select).to eql([false])
      expect(enum.test_4_my_select).to eql([8])
    end
    it "testing method my_all?" do
      expect(enum.test_1_my_all?).to eql(false)
      expect(enum.test_2_my_all?).to eql(true)
      expect(enum.test_3_my_all?).to eql(true)
      expect(enum.test_4_my_all?).to eql(true)
    end
    it "testing method my_any?" do
      expect(enum.test_1_my_any?).to eql(false)
      expect(enum.test_2_my_any?).to eql(false)
      expect(enum.test_3_my_any?).to eql(true)
      expect(enum.test_4_my_any?).to eql(false)
    end
    it "testing method my_none?" do
      expect(enum.test_1_my_none?).to eql(false)
      expect(enum.test_2_my_none?).to eql(false)
      expect(enum.test_3_my_none?).to eql(true)
      expect(enum.test_4_my_none?).to eql(true)
    end
    it "testing method my_count" do
      expect(enum.test_1_my_count).to eql(3)
      expect(enum.test_2_my_count).to eql(0)
      expect(enum.test_3_my_count).to eql(0)
      expect(enum.test_4_my_count).to eql(1)
    end
    it "testing method my_map" do
      expect(enum.test_1_my_map).to eql([2, 4, 6, 8, 10])
      expect(enum.test_2_my_map).to eql([true, false, true, false])
      expect(enum.test_3_my_map).to eql(%w[h h w m n])
      expect(enum.test_4_my_map).to eql([3, 4, 5, 6, 7])
    end
  end
end

