#first attempt at implementing a binary tree in Ruby. This class will only build the tree itself -- nothing else. Haven't even tested
#yet to make sure it does that correctly all the time.

class Node 
    attr_accessor :data,:parent,:left,:right
    def initialize (data)
        @data = data 
    end

    def self.all 
        ObjectSpace.each_object(self).to_a
    end

    def to_s 
        "data: #{data}, left: #{left}, right: #{right}"
    end


end

my_node = Node.new(100)

class Tree
    def initialize(arr)
        @root = Node.new(arr.shift())
        until arr.empty?
            insert(arr.shift())
        end

    end

    def insert(value,current_node = @root)
        new_node = Node.new(value)
        
        if new_node.data < current_node.data
            return current_node.left = new_node if current_node.left == nil
            insert(value,current_node.left)
        else
            return current_node.right = new_node if current_node.right == nil
            insert(value,current_node.right)
        end

    end

end

arr = [69, 52, 70, 91, 47, 5, 97, 94, 9, 4, 28, 14]

my_tree = Tree.new(arr)

pp my_tree
