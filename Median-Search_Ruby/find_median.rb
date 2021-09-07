#!/usr/bin/env ruby
require './median.rb'
include Median

print "Enter a sorted list of space seperated numbers ( e.g. 1 2 3 ): "
inp = gets.chomp
inp_list = inp.split(" ").map(&:to_i)
print "Enter a second sorted list of numbers: "
inp2 = gets.chomp
inp2_list = inp2.split(" ").map(&:to_i)

puts "Median = " + find_median_sorted_arrays(inp_list, inp2_list).to_s
