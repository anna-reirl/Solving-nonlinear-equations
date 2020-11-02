f(x, y) = 3sin(2y) + x

interval = [0.0, 2.0]
n = 50 #количество разбиений
y0 = 2.0 #начальное значение

step = (interval[2] - interval[1]) / n #длина разбиения
xArr = [interval[1]]
yArr = [y0]

for i = 1:n
    global xArr
    global yArr
    push!(xArr, interval[1] + i * step)
    push!(yArr, yArr[i] + step * f(xArr[i], yArr[i]))
end

print(xArr)
print(yArr)
