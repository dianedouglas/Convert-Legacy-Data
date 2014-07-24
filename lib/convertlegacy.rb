def convertlegacy (in_hash_map)

  out_hash_map = {}

  in_hash_map.each do |key, array_value|
    array_value.each do |letter|
      out_hash_map[letter] = key
    end
  end
  out_hash_map
  puts out_hash_map
end


convertlegacy({
      1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2  => ["D", "G"],
      3  => ["B", "C", "M", "P"],
      4  => ["F", "H", "V", "W", "Y"],
      5  => ["K"],
      8  => ["J", "X"],
      10 => ["Q", "Z"]
    })
