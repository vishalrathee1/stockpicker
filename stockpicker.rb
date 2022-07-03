def stock_picker(price_chart)
    lowest = price_chart[0]
    max_low = price_chart[0]
    lowest_index = 0
    profit = 0
    max_profit = 0
    max_profit_index = 0
    i=0
    while i < price_chart.length
        if price_chart[i] < lowest 
            lowest = price_chart[i]      
        end
        if price_chart[i]-lowest>max_profit
            max_profit = price_chart[i]-lowest
            max_profit_index=i
            max_low = lowest
        end
        i+=1
    end
    lowest_index = price_chart.index(max_low)
    return [lowest_index, max_profit_index]
end

x = [17,3,6,9,15,8,6,1,10]
print stockpicker(x)

