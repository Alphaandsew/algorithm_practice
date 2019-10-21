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
