require "yaml"
  	#meanging = Japanese
  	#emoticon = English
def load_library(yaml_file)
  emot_lib = YAML.load_file(yaml_file)
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emot_lib.each do |key, value|
  	new_hash["get_meaning"][value[1]] = key
  	new_hash["get_emoticon"][value[0]] = value[1]
  end
  new_hash
end

def get_japanese_emoticon(yaml_file,emoticon)
  lib = load_library(yaml_file)
  lib["get_emoticon"][emoticon] || 
  "Sorry, that emoticon was not found"
end

def get_english_meaning(yaml_file,emoticon)
  eng_lib = load_library(yaml_file)
  eng_lib["get_meaning"][emoticon] ||
  "Sorry, that emoticon was not found"
end

puts get_japanese_emoticon('./lib/emoticons.yml','(＾ｖ＾)')