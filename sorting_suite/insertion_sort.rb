class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(collection)
    @sorted << collection.shift
    collection.each do |num|
      if num < @sorted[0]
        @sorted.unshift(num)
      elsif
        num > @sorted.last
        @sorted.push(num)
      else
        @sorted.each_with_index do |not_used_thing, index|
          if num > @sorted[index] && num < @sorted[index+1]
            @sorted.insert(index+1, num)
          end
        end
      end
    end
    p @sorted
  end

end


sorter = InsertionSort.new
sorter.sort([4,7685,2,3,465,82,1,5,8])
# ["y", "z", "x", "d", "c", "c", "b", "a"]
