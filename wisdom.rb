#!/usr/bin/env ruby

# require 'word_wrap'
require_relative "./wrapper.rb"

quotes = <<~QUOTES
  "Be considerate about which values you can pre-compute. If you use a calculated value many times, it may well be beneficial to compute it in advance and store it in a lookup table."
  - Steve McConnell, Code Complete

  "Premature optimization is the root of all evil."
  - Donald Knuth, Computer Programming as an Art

  console: it's not just for logs. Don't forget about .warn, .error, .group(End) and .time(End)

  "Your employer can't force you to be a good programmer; a lot of times your employer isn't even in a position to judge whether you're good. If you want to be great, you're responsible for making yourself great. It's a matter of your personal character."
  - Steve McConnell, Code Complete

  "Programmers are so busy working they often don't have time to be curious about how they might do their jobs better."
  - Steve McConnell, Code Complete

  "The bottom line on experience is this: if you work for 10 years, do you get 10 years of experience or do you get 1 year of experience 10 times?"
  - Steve McConnell, Code Complete

  "Any improvements made to areas other than the system's bottlenecks are an illusion."
  - Part of Goldratt's Theory of Constraints, from 'The Goal'

  "Optimize your images!"
  - Kelly Vaughn (@kvlly)

  "We who cut mere stones must always be envisioning cathedrals."
  — Quarry worker's creed

  "Good API design requires that we make it easy to do the right thing and hard to do the wrong thing."
  - Kent C. Dodds

  "Comparison is the thief of joy."
  - Theodore Roosevelt

  "Live, laugh, love."
QUOTES

quote_array = quotes.strip.split("\n\n")

TREES = ['🌲', '🌳', '🌲', '🌳', '💐', '🌺']

40.times { print TREES.sample }
puts ''

quote_lines = WW.wrap(quote_array.sample, 68).split("\n")

quote_lines = quote_lines.map do |line|
  modified_line = ''
  2.times { modified_line << TREES.sample }
  modified_line << "  #{line.center(68)}  "
  2.times { modified_line << TREES.sample }
  modified_line
end

puts quote_lines

40.times { print TREES.sample }
puts ''
