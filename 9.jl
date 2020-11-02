f(x, y) = 3sin(2y) + x

interval = [0.0, 1.0]
n = 10 #количество разбиений

y0 = 2.0;
step = (interval[2] - interval[1]) / n #длина разбиения

x = [interval[1]]
y = [y0]
y1 = []
y2 = []
y3 = []
y4 = []

for i = 1:n
    global x
    global y
    global y1
    global y2
    global y3
    global y4

    push!(x, interval[1] + i * step)
    push!(y1, step * f(x[i], y[i]))
    push!(y2, step * f(x[i] + step / 2, y[i] + y1[i] / 2))
    push!(y3, step * f(x[i] + step / 2, y[i] + y2[i] / 2))
    push!(y4, step * f(x[i] + step, y[i] + y3[i]))
    push!(y, y[i] + (y1[i] + 2y2[i] + 2y3[i] + y4[i]) / 6)
end

print(x)
print(y)
