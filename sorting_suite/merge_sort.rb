class MergeSort
  attr_reader :array

  def initialize(array)
    @array = array
    @sorted_array = []
    @split_array = []
  end

  def sort
    split_array(@array)
require "pry"; binding.pry

  end

  def split_array(array)
    half_count_of_array = array.count / 2
    if half_count_of_array > 1
      @first = array[0...half_count_of_array]
      @last = array[half_count_of_array..-1]
      if @first[0] > @first[1]
        @first[0], @first[1] = @first[1], @first[0]
      end
      if @last[0] > @last[1]
        @last[0], @last[1] = @last[1], @last[0]
      end
    end
    if @first.count > 2
      split_array(@first)
      split_array(@last)
    end
  end

  def checker

  end #while or until for the checker == false

end


sorter = MergeSort.new(["f","r","d", "b", "a", "c", "x", "z"])
sorter.sort
