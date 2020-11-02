f(x) = 2x^3 - 7x + 4

interval = [0, 2]
n = 50 #количество разбиений


step = (interval[2] - interval[1]) / n #длина одного разбиения
totalSum = 0 #сумма разбиений

for i = 1:(n-1)
    global totalSum += f(interval[1] + i * step)
end

totalSum += (f(interval[1]) + f(interval[2])) #прибавляем на концах отрезка
totalSum *= step

print(totalSum)
