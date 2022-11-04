module my_enumerable
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
