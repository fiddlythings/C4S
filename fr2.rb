#!/usr/bin/ruby

# The script must parse the contents of all files in the directory 
# /var/data/agk/ and identify all files that contain the string 'foo'

# The script then must generate a report to STDOUT that contains the filename,
# file size in bytes, and the time that the file was last modified for all of 
# the above identified files.

# For example, a single line of the output might look like: 
# FILENAME - 2517 - Jun 18 2011 10:46


Dir.glob("./agk/*") do |filename|
  puts "#{filename} - #{File.size(filename)} - #{File.mtime(filename)}" if File.read(filename) =~ /foo/
end
