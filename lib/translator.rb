require 'pry'
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file(file)
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {},
  }
  
  emoticons.each do |key, value|
    new_hash['get_meaning'][value[1]] = key
    new_hash['get_emoticon'][value[0]] = value[1]
  end
  
  new_hash
  #binding.pry
end

def get_japanese_emoticon(file, emoticon)
  new_hash = load_library(file)

  new_hash['get_emoticon'].each do |key, value|
     #binding.pry
      if key == emoticon
        return value
      #binding.pry  
      end
      
  end
  
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  
    new_hash = load_library(file)

end