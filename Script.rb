dictionary = %w[the of and a to in is you that it he was for on are as with
                his they I at be this have from or one had by word but not what all were
                we when your can said there use an each which she do how their if will up
                other about out many then them these so some her would make like him into time
                has look two more write go see number no way could people my than first water
                been call who oil its now find long down day did get come made may part]

test_string = 'I am going to drink the water first and I am also going to write no more words this time.'

def substrings(string, array)
  lower_case = string.downcase
  result = Hash.new(0)

  array.each do |word|
    count = lower_case.scan(word).length
    result[word] = count
  end
  result.delete_if { |_key, value| value.zero? }
  puts result
end

substrings(test_string, dictionary)
