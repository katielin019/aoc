def checkLevels(arr)
  i = 0
  diff = []
  steps = (1..3).to_a
  safe = true
  while i < arr.length() - 1 && safe == true
    result = arr[i] - arr[i+1]
    steps.include?(result.abs()) ? diff[i] = result : safe = false
    i += 1
  end

  if safe == true
    return (diff.all? { |e| e > 0} || diff.all? { |e| e < 0 })
  end
  return false
end

p checkLevels([1, 3, 4, 5])     # true
p checkLevels([1, 3, 6, 7, 9])  # true
p checkLevels([1, 3, 2, 4, 5])  # false
p checkLevels([9, 7, 6, 2, 1])  # false
p checkLevels([8, 6, 4, 4, 1])  # false
p checkLevels([10, 7, 5, 3, 1]) # true
