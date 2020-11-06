f(x) = sin(pi * x / 180) - 1 / x


#начальные приближения
x1 = 10 #x(i-1)
x2 = 1 #x(i-2)

accuracy = 0.000001

while true

    # проверяем условие нахождения корня
    if abs(f(x1)) <= accuracy
        print(x1)
        break
    end

    # временная переменная на случай если конец не закреплен
    temp = x1

    # применяем формулу
    global x1 = x1 - f(x1) * (x1 - x2) / (f(x1) - f(x2))
    #global x2 = temp  #если один конец не закреплен, раскомментировать

end
