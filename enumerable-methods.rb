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
end