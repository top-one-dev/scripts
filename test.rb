def skip_animals(animals, skip)
    result = []
    animals.each_with_index{ |e, i| result.push "#{i}:#{e}" if i >= skip }
    result
end