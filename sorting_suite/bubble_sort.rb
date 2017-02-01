class BubbleSort

  def sort(collection)
    collection.count.times do
      collection.map.with_index do |item, index|
        if collection[index+1] == nil
        elsif collection[index] > collection[index+1]
          collection[index], collection[index+1] = collection[index+1], collection[index]
        end
      end
    end
    p collection
  end

end

sorter = BubbleSort.new
sorter.sort(["y", "z", "x", "d", "c", "c", "b", "a"])
