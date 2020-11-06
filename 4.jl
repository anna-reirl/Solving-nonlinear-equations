f(x) = 1 / sin(pi * x / 180)

x = 7
accuracy = 0.00001

while true

    # временная переменная для хранения старого значения
    temp = x
    global x = f(x) # формула

    # проверяем условие
    if abs(temp - x) <= accuracy
        print(temp)
        break
    end


end
