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


def get_japanese_emoticon(path, emo)
  lib_2 = load_library(path)
  result = lib_2["get_emoticon"][emo]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end


def get_english_meaning(path, emo)
  lib_2 = load_library(path)
  result = lib_2["get_meaning"][emo]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end