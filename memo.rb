require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = 1
    puts "拡張子を除いたファイル名を入力してください"
    title = gets.chomp
    CSV.open("#{title}.csv", 'w') do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押してください"
        contents = readlines.map(&:chomp)
        csv << contents
    end
elsif memo_type = 2
    puts "拡張子を除いたファイル名を入力してください"
    CSV.open("#{title}.csv", "a") do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押してください"
        csv << contents
    end
else
    puts "Error"
end
