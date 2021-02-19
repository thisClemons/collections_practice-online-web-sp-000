require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(arr)
  temp = arr[2]
  arr[2] = arr[1]
  arr[1] = temp
  arr
end

def swap_elements_from_to(array, index, destination_index)
  temp = array[index]
  array[index] = array[destination_index]
  array[destination_index] = temp
  array
end

def reverse_array(arr)

  rev_arr = []
  i = 0
  arr.each do |num|
      rev_arr[arr.length - 1 -i] = arr[i]
      i += 1
  end
  rev_arr
end

def kesha_maker(arr)
  keshed = []
  i = 0
  arr.each do |word|
    werd = word
    werd[2] = "$"
    keshed[i] = werd
    i += 1
  end
end

def find_a(string)

  string.select do |word|
    word.start_with?("a")
  end
end

def sum_array(array)
    # sum = 0
    # array.each {|num| sum += num}
    # sum
    array.inject() {|sum, num| sum += num}

end

def add_s(array)
  # array.collect do |word|
  #   if array.index(word) != 1
  #     word.insert(-1, "s")
  #   else word
  #   end
  # end

  array.each_with_index.collect {|word, index| index == 1? word : word.insert(-1, "s")}
end

#binding.pry
