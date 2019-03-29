require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file('lib/emoticons.yml')

  organized_library = {}
  get_meaning = {}
  get_emoticon = {}
  get_meaning_value = {}
  #meanings_array = []


  library.each do |meaning,both_emoticons|


    #both_emoticons.each do |emoticon|
      get_meaning_each = {emoticon => meaning}
      get_meaning_value = get_meaning_value.merge!(get_meaning_each)


    #end
    binding.pry
  end # creates organized_library


end

def get_japanese_emoticon
  library.each do |get_key,get_values|
    get_values.each do |emoticon_key,emoticon_info|
      if emoticon_key == emoticon_translation
        return emoticon_info
      end
    end
end

def get_english_meaning
  # code goes here
end


def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)

  library.each do |get_key,get_values|
    binding.pry
    #if get_key == "get_emoticon"
      get_values.each do |emoticon_key,emoticon_info|
        #binding.pry
        if emoticon == emoticon_key
          #emoticon_translation = emoticon_info
          return emoticon_info
        else
          return "Sorry, that emoticon was not found"
        end
      end
    #end
  end



  if emoticon  == e_emoticon
    return j_emoticon
  elsif emoticon == "=D"
    puts "it matched it."
  else
   return "Sorry, that emoticon was not found"
  end