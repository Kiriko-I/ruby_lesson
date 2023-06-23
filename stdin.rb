# 指定された行数入出力を繰り返す
# n = gets.to_i
# (0..n).each do |a|
#     a = gets
#     puts a
# end

# スペース区切りで入力された文字を改行して出力する
x = gets.split(" ")
x.each do |y|
    puts y
end

# カンマ区切りで改行
x = gets.split(",")
x.each do |y|
    puts y
end