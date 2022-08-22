def stock_picker(prices)
  best_profit = 0
  buy_day = nil
  sell_day = nil
  prices.reduce() do |memo, value|
    if value - memo > best_profit
      best_profit = value - memo
      buy_day = prices.index(memo)
      sell_day = prices.index(value)
    end
    memo > value ? value : memo
  end
  [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,6,9,15,8,6,1,30,2])
