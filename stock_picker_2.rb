def stock_picker(prices)
  best_profit = 0
  buy_day = nil
  sell_day = nil
  passes = 0
  prices.each_with_index.reduce() do |memo, (value, index)|
    p "this is the memo #{memo}"
    p "this is the value #{value}"
    p "this is the index #{index}"
    if value - memo[0] > best_profit
      best_profit = value - memo[0]
      buy_day = prices.index(memo[0])
      sell_day = index
    end
    p "this is the best profit #{best_profit}"
    p "this is the memo 0 #{memo[0]}"
    memo[0] > value ? [value, 0] : memo
  end
  [buy_day, sell_day]
end

p stock_picker([17,6,9,15,8,6,1,30,2])
