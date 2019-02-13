# require modules here
require 'pry'
require 'yaml'


def load_library(emoticons_file)
  # code goes here
  hash = YAML.load_file('./lib/emoticons.yml')
  hash

  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
