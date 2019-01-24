require 'pry'
def nyc_pigeon_organizer(data)
ugly_hash = {}

data.each do |top_key, mid_hashes|
  mid_hashes.each do |mid_key, name_array|
    name_array.each do |name|
      if !ugly_hash.has_key?(name)
        ugly_hash[name] = {}
      end
      if !ugly_hash[name].has_key?(top_key)
        ugly_hash[name][top_key] = *"#{mid_key}"
      else
        ugly_hash[name][top_key] << "#{mid_key}"
      end
    end
  end
end
   
  
ugly_hash
end