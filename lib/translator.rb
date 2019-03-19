# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {"get_emoticon" => {}, "get_meaning" => {}}
  # binding.pry
  emoticons.each do |word,emoji|
    english = emoji[0]
    japanese = emoji[1]

    new_hash["get_emoticon"][english] = japanese
    new_hash["get_emoticon"][japanese] = word

    new_hash["get_meaning"][english] = word
    new_hash["get_meaning"][japanese] = word
    # binding.pry
  end #emoticons
  # puts new_hash
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  #emoticons["get_emoticon"], emoticons["get_meaning"]

  if emoticons["get_emoticon"].include?(emoticon)
    emoticons["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
    # binding.pry
  end
end

def get_english_meaning(file_path, word)
  emoticons = load_library(file_path)

  if emoticons["get_emoticon"].include?(word)
    emoticons["get_emoticon"][word]
  else
    "Sorry, that emoticon was not found"
  end
end
