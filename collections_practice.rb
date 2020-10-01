def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort.reverse
end

def sort_array_char_count(array)
    array.sort { |a, b| a.length <=> b.length }
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    split_words = []
    kesha_array = []
    array.each { |word| split_words << word.split("") }
    split_words.each { |word| word[2] = "$" }
    split_words.each { |word| kesha_array << word.join("") }
    return kesha_array
end

def find_a(array)
    a_array = []
    array.collect { |word| word.split("")[0] == "a" ? a_array << word : nil }
    a_array
end

def sum_array(array)
    array.inject(:+)
end

def add_s(array)
    array.each_with_index.collect { |word, index| index != 1 ? word + "s" : word }
end