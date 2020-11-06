f(x) = sin(pi * x / 180) - 1 / x
f1(x) = (pi / 180) * cos(pi * x / 180) + 1 / (x^2) #производная

x = 1 #начальное приближение
accuracy = 0.00001

while true

    # проверяем условие для нахождения корня
    if abs(f(x)) <= accuracy
        print(x)
        break
    end

    # меняем приближение согласно формуле
    global x = x - f(x) / f1(x)

end
