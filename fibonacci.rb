# frozen_string_literal: true

def fibs(num)
  arr = Array.new(num)
  arr.each_index do |i|
    arr[i] = i if i < 2
    arr[i] = arr[i - 1] + arr[i - 2] if i >= 2
  end
end

def fibs_rec(num, arr = [])
  arr << arr.length if arr.length < 2
  arr << arr[-1] + arr[-2] if arr.length > 1
  fibs_rec(num, arr) if arr.length < num

  arr
end

print fibs(20)
puts ''
print fibs_rec(20)
