def decryptPassword(s)
    # Write your code here
    decrypt = s
    s.split('').each do |c|
    	if numeric?(c) && c != "0"
            decrypt = decrypt.sub(c, '')
            index = decrypt.rindex("0")
            decrypt[index] = c 
        end
    end
    s = decrypt
    s.split('').each_with_index do |c, i|
        if first?(s, i)
            decrypt[i] =  decrypt[i+1]
            decrypt[i+1] = c
        end
    end
    decrypt = decrypt.gsub("*", "")
    decrypt
end

def letter?(lookAhead)
  lookAhead.to_s.match?(/[[:alpha:]]/)
end

def numeric?(lookAhead)
  lookAhead.to_s.match?(/[[:digit:]]/)
end

def is_upper? lookAhead
    lookAhead == lookAhead.upcase
  end

  def is_lower? lookAhead
    lookAhead == lookAhead.downcase
  end

def first?(s, i)
	if letter?(s[i]) && letter?(s[i+1])
        is_upper?(s[i]) && is_lower?(s[i+1]) && s[i+2] == "*" 
    else 
        false 
    end  
end

def findSum(numbers, queries)
    # Write your code here
    sum = numbers[queries[0][0]..queries[0][1]].reduce(:+)
    sum += 10 if numbers[queries[0][0]..queries[0][1]].include? 10
    sum
end


numbers_count = gets.strip.to_i

numbers = Array.new(numbers_count)

numbers_count.times do |i|
    numbers_item = gets.strip.to_i
    numbers[i] = numbers_item
end

queries_rows = gets.strip.to_i
queries_columns = gets.strip.to_i

queries = Array.new(queries_rows)

queries_rows.times do |i|
    queries[i] = gets.rstrip.split.map(&:to_i)
end

puts "----- numbers = #{numbers}"
puts "----- queries = #{queries}"
puts findSum numbers, queries