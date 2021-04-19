def take array, number
    number = number ? number : 1
    array[number..array.length + 1]
end