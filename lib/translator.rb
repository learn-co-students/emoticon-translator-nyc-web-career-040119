require 'yaml'
require 'pry'
def load_library(library)
  emoticons = YAML.load_file(library)
  emo_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |desc, emo_arr|
    emo_hash["get_meaning"][emo_arr[1]] = desc
    emo_hash["get_emoticon"][emo_arr[0]] = emo_arr[1]
    # binding.pry
  end 
  emo_hash
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)

  if emoticons["get_emoticon"].keys.include?(emoticon)
    emoticons["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  if emoticons["get_meaning"].keys.include?(emoticon)
    emoticons["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end