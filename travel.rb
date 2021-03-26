puts <<~TEXT
旅行プランを入力してください
1. 沖縄旅行（10000円）
2. 北海道旅行（20000円）
3. 九州旅行（15000円）
TEXT

i = 0
while(i == 0)
  print "プランの番号を選択 > "
  plan = gets.to_i
  if plan == 1
    puts "沖縄旅行ですね。"
    price = 10000
    i = 1
  elsif plan == 2
    puts "北海道旅行ですね"
    price = 20000
    i = 1
  elsif plan == 3
    puts "九州旅行ですね"
    price = 15000
    i = 1
  else
    puts "1~3の番号を入力してください。"
  end
end

i = 0
while(i == 0)
  puts "何名で予約されますか？"
  print "人数を入力 > "
  num = gets.to_i
  sum = price * num
  if num >= 5
    puts "#{num}名ですね。"
    puts "5名以上ですので10%割引となります"
    puts "合計料金は#{(sum * 0.9).to_i}円になります。"
    i = 1
  elsif 1 <= num && num <= 4
    puts "#{num}名ですね。" 
    puts "合計料金は#{sum}円になります。"
    i = 1
  else
    puts "1以上を入力して下さい。"
  end
end