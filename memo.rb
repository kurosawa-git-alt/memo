require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = 1
    puts "拡張子を除いたファイル名を入力してください"
    title = gets.chomp
    file = File.open("#{title}.csv", "w")
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押してください"
    contents = readlines.map(&:chomp)
    file.puts("#{contents}")
elsif memo_type = 2
    puts "拡張子を除いたファイル名を入力してください"
    file = File.open("#{title}.csv", "a")
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押してください"
    file.puts("#{contents}")
else
    puts "Error"
end
