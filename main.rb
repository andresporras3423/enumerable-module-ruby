require './enumerable_methods'

def multiply_els(arr)
  rand_method = rand(1..3)
  case rand_method
  when 1 # by block
    arr.my_inject { |total, a| total * a }
  when 2 # by symbol
    arr.my_inject(:*)
  when 3 # by proc
    by_proc = proc { |total, a| total * a }
    arr.my_inject(by_proc)
  end
end

puts multiply_els([2, 4, 5])
# puts [1, 2, false].all?
# puts [1, 2, 3].my_all?(Integer)
# puts %w[dog door rod blade].my_all?(/d/)
# puts [1, 1, 1].my_all?(1)

# puts [1, 2, true].all?
# puts [1, 2, ""].my_all?(Integer)
# puts %w[dog door rod carlos].my_all?(/d/)
# puts [1, 1, 2].my_all?(1)

# puts [nil, nil, false].my_any?
# puts ["", "", 3.2].my_any?(Integer)
# puts %w[bless clam mus lola].my_any?(/d/)
# puts [5, 2, 3].my_any?(1)

# puts [nil, false, 1].my_none?
# puts ["", "", 3].my_none?(Integer)
# puts %w[bless clam dos lola].my_none?(/d/)
# puts [1, 2, 3].my_none?(1)

puts [1, 2, false].my_count { |element| element.is_a?(Integer) } 