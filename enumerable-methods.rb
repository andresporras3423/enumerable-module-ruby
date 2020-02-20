module Enumerable
  def my_each
    return to_enum unless block_given?

    x = 0
    array = to_a
    while x < array.length
      yield array[x]
      x += 1
    end
  end

  def my_each_with_index
    return to_enum unless block_given?

    x = 0
    array = to_a
    while x < array.length
      yield array[x], x
      x += 1
    end
  end

  def my_select
    return to_enum unless block_given?

    accepted = []
    my_each do |value|
      accepted << value if yield value
    end
    accepted
  end

  def my_all?
    return (my_all? { |x| !x.nil? }) unless block_given?

    my_each do |value|
      return false unless yield value
    end
    true
  end

  def my_any?
    return (my_any? { |x| !x.nil? }) unless block_given?

    my_each do |value|
      return true if yield value
    end
    false
  end

  def my_none?
    return (my_none? { |x| !x.nil? }) unless block_given?

    my_each do |value|
      return false if yield value
    end
    true
  end
end