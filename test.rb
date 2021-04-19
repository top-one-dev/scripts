def sum_terms(n)
  1.upto(n).reduce(0) do |m, x|
    m + x*x + 1
  end
end