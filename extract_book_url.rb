#!/usr/bin/env ruby

regex = /^\"(.*)\"$/

ARGF.each do |line|
  splited = line.split(',').map{|i|
    if i =~ regex
      i.scan(/^\"(.*)\"$/).first.first
    else
      ""
    end
  }
  url = splited.detect{|i| i =~ /^http.+\.zip$/}
  puts url if url
end
