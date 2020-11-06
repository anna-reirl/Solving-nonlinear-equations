f(x) = 2x^3 - 7x + 4

interval = [0, 2]
n = 50 #количество разбиений

step = (interval[2] - interval[1]) / n #длина разбиения

totalSum = 0

#проходимся по разбиениям согласно формуле сумме ряда
for i = 0:(n - 1)
    local x1 = interval[1] + i * step #x(i)
    local x2 = x1 + step #x(i + 1)

    global totalSum += (f(x1) + f(x2)) * (x2 - x1) / 2
end

print(totalSum)
