# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  lib = YAML.load_file(path)
  lib_2 = Hash.new

  lib_2["get_emoticon"] = Hash.new
  lib_2["get_meaning"] = Hash.new

  lib.each do |word, emotpic|
    lib_2["get_emoticon"][emotpic.first] = emotpic.last
    lib_2["get_meaning"][emotpic.last] = word
  end
  lib_2
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end