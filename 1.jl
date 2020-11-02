# задаем функцию
f(x) = 10x - 4

interval = [0, 10]
accuracy = 0.1

while true
    global interval

    middle = (interval[1] + interval[2]) / 2

    if abs(f(middle)) <= accuracy
        print(middle)
        break
    end

    if f(middle) * f(interval[1]) < 0
        global interval = [interval[1], middle]
        continue
    end

    if f(middle) * f(interval[2]) < 0
        global interval = [middle, interval[2]]
    end
end
