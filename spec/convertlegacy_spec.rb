require('rspec')
require('convertlegacy')

describe('convertlegacy') do
  it('will transform a hash of data into data in hash') do
    convertlegacy({ 1  => ["A"]}).should(eq({ "A" => 1 }))
  end
  it("will transform multiple hash of data into data in hash") do
  convertlegacy({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]}).should(eq({
    "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
    }))
  end
  it("will transform multiple hash of data into data multiple hashez") do
    convertlegacy({
      1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2  => ["D", "G"],
      3  => ["B", "C", "M", "P"],
      4  => ["F", "H", "V", "W", "Y"],
      5  => ["K"],
      8  => ["J", "X"],
      10 => ["Q", "Z"]
    }).should(eq({
      "A" => 1, "B" => 3,  "C" => 3, "D" => 2, "E" => 1,
      "F" => 4, "G" => 2,  "H" => 4, "I" => 1, "J" => 8,
      "K" => 5, "L" => 1,  "M" => 3, "N" => 1, "O" => 1,
      "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
      "U" => 1, "V" => 4,  "W" => 4, "X" => 8, "Y" => 4,
      "Z" => 10
    }))
  end
end
