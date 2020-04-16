def encryption(s)
len = s.length
row = Math.sqrt(len).floor
clm = Math.sqrt(len).ceil
row = clm if row * clm < len
str = s.chars
new_arr = []
j = 0
  for i in 0...row
    cnt = 0
    temp = []
    while cnt < clm && j < len
        temp << str[j]
        cnt += 1
        j += 1
    end
    new_arr << temp

  end
  enc_str = ""
  i = 0
  clm.times do
    for i in 0...row
      char =  new_arr[i].shift
      enc_str += char if char != nil
    end
    enc_str += " "
  end
  puts " #{enc_str}"
end

encryption("feedthedog")
# output should be "fto ehg ee dd"
