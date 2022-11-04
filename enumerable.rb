module MyEnumerable
    def all?
      result = true
      eachs { |i| result = false unless yield i }
      result
    end
    def any?
      result = false
      eachs { |el| result = true if yield el }
      result
    end

    def filter?
      result = []
      eachs { |el| result.push(el) if yield el }
      result
    end
end

class Mylist
   def initialize(*list_)
        @list = list_
   end
   include MyEnumerable

   def eachs (&block)
        @list.each(&block)
   end
end

list = Mylist.new(1, 2, 3, 4)
puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}
puts list.any? {|e| e == 2}
puts list.any? {|e| e == 5}
puts list.filter? {|e| e.even?}