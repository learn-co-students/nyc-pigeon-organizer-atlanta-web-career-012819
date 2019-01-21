def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |pigeons, info|
    info.each do |key, value|
      value.each do |name| 
        new_hash[name] ||= {} 
        new_hash[name][pigeons] ||= []
        new_hash[name][pigeons] << key.to_s
      end
    end
  end
  new_hash
end