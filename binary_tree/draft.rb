# Build a class Node. It should have a value that it stores and also links to its parent and children (if they exist). Build getters and setters for it (e.g. parent node, child node(s)).

class Node 
    attr_accessor :data,:parent,:left,:right
    def initialize (data)
        @data = data 
    end

    def self.all 
        ObjectSpace.each_object(self).to_a
    end

    def to_s 
        "data: #{data}, left: #{left == nil ? "nil" : left.data}, right: #{right == nil ? "nil" : right.data}"
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

    def level_order_print(root = @root)
        return if root == nil
        queue = Queue.new()
        queue << root
        while !queue.empty?
            current_node = queue.pop()
            puts current_node.data
            queue << current_node.left  if current_node.left != nil
            queue << current_node.right if current_node.right != nil
        end 
    end
    
    def pre_order_print(current_node = @root)
        return if current_node == nil
        puts current_node
        pre_order_print(current_node.left)
        pre_order_print(current_node.right)
    end

    def in_order_print(current_node = @root)
        return if current_node == nil
        in_order_print(current_node.left)
        puts current_node
        in_order_print(current_node.right)
    end

    def reverse_order_print(current_node = @root)
        return if current_node == nil
        reverse_order_print(current_node.right)
        puts current_node
        reverse_order_print(current_node.left)
    end

    def post_order_print(current_node = @root)
        return if current_node == nil
        post_order_print(current_node.left)
        post_order_print(current_node.right)
        puts current_node
    end

    def bfs(value,root = @root)
        return nil if root == nil
        queue = Queue.new()
        queue << root
        while !queue.empty?
            current_node = queue.pop()
            return current_node if current_node.data == value
            queue << current_node.left  if current_node.left != nil
            queue << current_node.right if current_node.right != nil
        end
    end

    def dfs(value,current_node = @root)
        return nil if current_node == nil
        return current_node if value == current_node.data
        dfs(value,current_node.left)
        dfs(value,current_node.right)
    end

end

arr = [69, 52, 70, 91, 47, 5, 97, 94, 9, 4, 28, 14]

my_tree = Tree.new(arr)

# puts my_tree

my_tree.insert(34)

# pp my_tree

# my_tree.level_order_print

# puts my_tree.bfs(69)

# my_tree.in_order_print()

# my_tree.post_order_print()

# my_tree.reverse_order_print()

p my_tree.dfs(97)
