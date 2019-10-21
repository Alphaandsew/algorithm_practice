## singly-linked list implemented in Ruby
#this script tests various methods in the singly-linked list class

require_relative "node"
require_relative "singly_linked_list"



puts "Creating singly-linked list..."
my_list = SinglyLinkedList.new
puts

puts "appending 2 nodes (100 & 50)"
my_list.append(100)
my_list.append(50)

puts "list: #{my_list}(#{my_list.size})"
puts

puts "prepending 2 nodes (\"last\" & \"real tail\""
my_list.prepend("last")
my_list.prepend("real tail")

puts "list: #{my_list} (size: #{my_list.size})"
puts

puts "appending 1 node (1400)"
my_list.append(1400)

puts "list: #{my_list} (size: #{my_list.size})"
puts


puts "does my list contain 101?"
p my_list.contains?(101)
puts "does my list contain 100?"
p my_list.contains?(100)

puts "\nwhere does my list contain 100?"
p my_list.find(100)

puts "\ninterting a node(\"ww\") at index 2"
my_list.insert_at(2,"ww")

puts "list: #{my_list} (size: #{my_list.size})"
puts 

puts "removing a node(2) at index 2"
my_list.remove_at(2)

puts "list: #{my_list} (size: #{my_list.size})"
