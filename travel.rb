puts <<~TEXT
旅行プランを入力してください
1. 沖縄旅行（10000円）
2. 北海道旅行（20000円）
3. 九州旅行（15000円）
TEXT

while true
  print "プランの番号を選択 > "
  case plan_select = gets.to_i
  when 1, 2, 3
    break
  end
  puts "1〜3の番号を入力して下さい。"
end

case plan_select
when 1
  plan_name = "沖縄旅行"
  plan_price = 10000
when 2
  plan_name = "北海道旅行"
  plan_price = 20000
when 3
  plan_name = "九州旅行"
  plan_price = 15000
end
puts "#{plan_name}ですね。"

while true
  puts "何名で予約されますか？"
  print "人数を入力 > "
  people_num = gets.to_i
  if 1 <= people_num
    break
  end
  puts "1以上を入力して下さい。"
end

total_sum = plan_price * people_num
puts "#{people_num}名ですね。"
if 5 <= people_num
  puts "5名以上ですので10%割引となります"
  total_sum = (total_sum * 0.9).to_i
end
puts "合計料金は#{total_sum}円になります。"
