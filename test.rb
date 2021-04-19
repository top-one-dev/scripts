def sockMerchant(n, ar)
    ar.group_by(&:itself).transform_values{ |v| v.size / 2 }.values.sum
end
