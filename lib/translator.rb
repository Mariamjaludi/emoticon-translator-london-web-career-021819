# require modules here
require 'pry'
require 'yaml'


def load_library(emoticons_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |key, val|
    english = val[0]
    japanese = val[1]
    library["get_meaning"][japanese] = key
    library["get_emoticon"][english] = japanese
  end
  library
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  lib = load_library(path)
  english_emoticon = lib["get_meaning"][emoticon]
  if english_emoticon == nil
    puts "Sorry, that emoticon was not found"
  else
    english_emoticon
end

def get_english_meaning(path, emoticon)
  # code goes here
end
