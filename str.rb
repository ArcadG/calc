s = gets.chomp.delete(' ')
arr = s.split(/\d/)
arr1 = s.split(/\D/)
@a = arr1[0].to_i
@operator = arr[-1]
@b = arr1[-1].to_i

if arr[0] == "-"
    @a = arr1[1].to_i
    @a = -@a
end

if @operator == "+-"
    @operator = "+"
    @b = -@b
end

if @operator == "--"
    @operator = "-"
    @b = -@b
end

    

print arr
print arr1
puts @operator
puts @a
puts @b