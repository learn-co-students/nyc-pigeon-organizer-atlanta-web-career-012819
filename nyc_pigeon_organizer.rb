def nyc_pigeon_organizer(data)
	new_hash = {}
  data.each do | attribute, data_set |
  	data_set.each do | kind, array |
  		array.each do | nickname |
  			if new_hash.empty?
  				new_hash[nickname] = { attribute => [kind.to_s] }
  			elsif !new_hash.key?(nickname)
  				new_hash[nickname] = { attribute => [kind.to_s] }
  			elsif !new_hash[nickname].key?(attribute)
  				new_hash[nickname][attribute] = [kind.to_s]
  			else
  				new_hash[nickname][attribute] << kind.to_s
  			end
  		end
  	end
  end
  new_hash
end