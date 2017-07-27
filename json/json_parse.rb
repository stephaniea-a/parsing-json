require 'json'

file = File.read('json_example.json')

parsed_json_to_hash = JSON.parse(file)

# puts parsed_json_to_hash["date"]

# parsed_json_to_hash.each do |key,value|
# 	puts key,value
# end

# parsed_json_to_hash['rates'].each do |k,v|
# 	puts k,v

# end

#loop that will access all key pair values even if embedded

parsed_json_to_hash.each do |k,v|
	puts k

	if(v.class == Hash)
		v.each do |key,value|
			puts key,value
		end
	else
		puts v
	end
end

# Method including checking if value is string, integer or float
parsed_json_to_hash.each do |k,v|
	puts k

	if(v.class == String || v.class == Integer || v.class == Float)
		puts v

	elsif(v.class == Hash)
			v.each do |key, value|
				puts key,value
			end
		
	end

end

#Using an is_a method
parsed_json_to_hash.each do |k,v|
	if (v.is_a?(Hash) == true)
		v.each do |key,value|
			puts key,value
		end
	else
		puts k,v
	end

end

