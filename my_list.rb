require_relative 'my_enumerable'

class MyList
  def initialize(*list_)
    @list = list_
  end
  include MyEnumerable

  def eachs(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts list.filter?(&:even?)
