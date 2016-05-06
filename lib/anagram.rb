# Your code goes here!
require 'pry'
class Anagram
	
  attr_accessor :anagram
	
  def initialize(anagram)
		@anagram = anagram
	end

	def match(list)
		matches = []
		list.each do |word|
			list_sort = word.chars.sort { |a, b| a.casecmp(b) } .join
			anagram_sort = anagram.chars.sort { |a, b| a.casecmp(b) } .join
			matches << word if list_sort == anagram_sort
		end
		matches
	end
end