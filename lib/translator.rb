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
  
end

def get_english_meaning
  # code goes here
end
