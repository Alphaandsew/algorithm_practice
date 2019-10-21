## singly-linked list implemented in Ruby

class Node
    attr_reader :data 
    attr_accessor :next 

    def initialize(data)
        @data = data 
        @next = nil
    end

    def to_s
        "data: #{@data}"
    end
end



class LinkedList
    def initialize
        @head = nil
        @count = 0
    end

    def append(value)
        if @count == 0
            @head = Node.new(value)
        else
            temp = Node.new(value)
            temp.next = @head 
            @head = temp
        end
        @count += 1
    end

    def prepend(value)
        if @count == 0
            @head = Node.new(value)    
        else
            node = @head
            until node.next == nil
                node = node.next
            end

            node.next = Node.new(value)
        end
        @count += 1

    end

    def size
        @count
    end
    
    def head
        @head
    end

    def tail
        node = @head
        until node.next == nil 
            node = node.next
        end
        node
    end

    def at(idx)
        node = @head 
        i = 0
        while i < idx 
            return "idx doesn't exist" if node.next == nil
            node = node.next 
            i += 1
        end
        node.data
    end

    def pop
        if @count == 1
            temp = @head.data
            @head = nil
            @count -= 1
            temp
        elsif @count < 1
            "linked list empty"
        else
            node = @head
            while node.next != self.tail
                node = node.next
            end
            temp = self.tail.data
            node.next = nil
            @count -= 1
            temp
        end
    end

    def contains?(value)
        node = @head 
        while node.next != nil
            return true if node.data == value
            node = node.next
        end
            false
    end

    def find(value)
        idx= 0
        node = @head 
        while node.next != nil
            return idx if node.data == value
            node = node.next
            idx += 1
        end
    end

    def to_s
        output = "(#{@head}) ->"
        node = @head
        until node.next == nil
            node = node.next
            output += " (#{node}) -> "
        end
        output += "nil"
        output
    end

    def insert_at(idx)
        #inserts note at given index
    end
    
    def remove_at(idx)
        #removes node at given index
    end

end


my_list = LinkedList.new

my_list.append(100)
my_list.append(50)
my_list.prepend("last")
my_list.prepend("real tail")
my_list.append(1400)

p my_list.contains?(101)
p my_list.contains?(100)
p my_list.find(1400)


puts my_list
