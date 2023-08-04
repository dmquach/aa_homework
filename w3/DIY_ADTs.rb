class Stack
  def initialize
    # create ivar to store stack here!
    @var = []
  end

  def push(el)
    @var.push(el)
    el
  end

  def pop
    @var.pop
  end

  def peek
    @var.first
  end
end

class Queue
    def initialize
        @var = []
    end

    def enqueue(el)
        @var.push(el)
        el
    end

    def dequeue
        @var.shift
    end

    def peek
       @var.first
    end
end

class Map
    def initialize
        @var = []
    end

    def set(key, value)
        pair = @val.index { |pair| pair[0] == key }
        if pair
            @val[pair][1] = value
        else
            @val.push([key, value])
        end
        value
    end

    def get(key)
        @val.each { |pair| return pair[1] if pair[0] == key }
    end

    def delete(key)
        value = get(key)
        @val.reject! { |pair| pair[0] == key }
        value
    end

    def show
        deep_dup(@var)
    end

    private

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end
end
