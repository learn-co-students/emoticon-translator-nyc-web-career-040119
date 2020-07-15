require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file('lib/emoticons.yml')

  get_meaning_value = {}
  get_emoticon_value = {}

  library.each do |meaning,both_emoticons|
    get_meaning_each = {both_emoticons[1] => meaning}
    get_meaning_value = get_meaning_value.merge!(get_meaning_each)

    get_emoticon_each = {both_emoticons[0] => both_emoticons[1]}
    get_emoticon_value = get_emoticon_value.merge!(get_emoticon_each)
  end # creates new library contents

  get_meaning_hash = { "get_meaning" => get_meaning_value}

  get_emoticon_hash = { "get_emoticon" => get_emoticon_value}

  library = get_meaning_hash.merge!(get_emoticon_hash)


end

def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  #get_emoticon = library["get_emoticon"]
  library.each do |get,get_value|
    get_value.each do |key,value|
      if key == emoticon
        return value
      end
    end
  end
  return "Sorry, that emoticon was not found"
end # get_japanese_emoticon end

#puts "given = #{emoticon} english = #{e_emoticon} japanese = #{j_emoticon}"



def get_english_meaning(file_path,emoticon)
  library = load_library(file_path)
  library.each do |get,get_value|
    get_value.each do |key,value|
      if key == emoticon
        return value
      end
    end
  end

  return "Sorry, that emoticon was not found"
end # get_english_meaning end