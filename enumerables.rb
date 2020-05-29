# rubocop:disable Metrics/ModuleLength

module Enumerable
  def my_each
     if block_given?
      puts "A block was given"
    for value in self do
      yield(value)
    end
     else 
      puts "No block given"
     end
  end

  def my_each_index
    if block_given?
      puts "A block was given"
    for index in (0 ...self.size)
      yield(index,self[index])
    end     
    else
      puts "Block was not given"
    end
  end

end
include Enumerable
# [1,2,3].my_each {|value| puts value}
[1,2,3].my_each_index{|index,value| puts "index:#{index}value:#{value}"}


