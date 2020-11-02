f(x) = 2x^3 - 7x + 4

interval = [0, 2]
n = 50 #количество разбиений

step = (interval[2] - interval[1]) / n #длина разбиения

totalSum = 0

for i = 1:(n / 2)
    local x1 = interval[1] + (2i - 1)step #x(2i - 1)

    global totalSum += 4f(x1)


    # сумма для i < n/2
    if i < n / 2
        local x2 = interval[1] + 2i * step #x(2i)
        global totalSum += 2f(x2)
    end
end

totalSum += f(interval[1]) + f(interval[2]) #прибавляем концы отрезка
totalSum *= step / 3

print(totalSum)
