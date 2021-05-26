import Foundation 

// 1. Решите квадратное уравнение
let a: Double = 1
let b: Double = -5
let c: Double = 6

let x1: Double
let x2: Double
let d: Double = (b * b) - 4 * a * c

if (d > 0) {
    x1 = -b + sqrt(d) / (2 * a)
    x2 = -b - sqrt(d) / (2 * a)
    print("Уравнение имеет 2 корня: x1 = \(x1), x2 = \(x2)")
} else if (d == 0){
    x1 = -b / (2 * a)
    print("Уравнение имеет 1 корень: x1 = \(x1)")
} else {
    print("Нет действительных корней")
}

// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

let catet1 = 3
let catet2 = 4

var hypotenuse = sqrt(Double(catet1*catet1 + catet2*catet2))
hypotenuse = Double(round(hypotenuse*100)/100)

let perimeter1 = Double(catet1) + Double(catet2) + hypotenuse

let square1 = Double(catet1*catet2)/2

print("При заданных катетах \(catet1) и \(catet2) гипотенуза равна \(hypotenuse), периметр равен \(perimeter1), площадь равна \(square1)")


    //3. Найти сумму вклада через 5 лет

var sum: Double = 100
var percent: Double = 10
sum = sum + (sum * percent / 100);
sum += (sum * percent / 100);
sum += (sum * percent / 100);
sum += (sum * percent / 100);
sum += (sum * percent / 100);

print("Через 5 лет вклад будет = \(sum)")


    //1. Вариант посложнее

func solveQuadricEquation(a: Double, b: Double, c: Double) -> String {
    let d = b*b - 4*a*c
    var c: String = ""
    
    if d < 0 {
        c = "Уравнение не имеет действительных корней"
    } else if d == 0 {
        let x = -b/(2*a)
        c = "Уравнение имеет один действительный корень"
    } else {
        let x1 = (-b+sqrt(d))/(2*a)
        let x2 = (-b-sqrt(d))/(2*a)
        c = "Уравнение имеет два действительных корня: \(x1) и \(x2)"
    }
    return c
}
// а как здесь вывести итоговый результат? где-то пропустили print()?
solveQuadricEquation(a: 1, b: 5, c: 4)

    //2. Посложнее

func calculateRightTriangleInfo (a: Double, b: Double) {
    let c = sqrt(a*a + b*b)
    let P = a+b+c
    let S = (a*b)/2
    
    print("Гипотенуза: \(String.init(format: "%.02f", c))")
    print("Периметр: \(P)")
    print("Площадь: \(S)")
}

calculateRightTriangleInfo(a: 3, b: 4)

    // 3. Посложнее

func calculateDeposit(initialDeposit: Double, rate: Double, time: Int = 5 ){
    var deposit = initialDeposit
    for _ in 1 ... time {
        deposit += (deposit/100) * rate
    }
print("Сумма вклада через \(time) лет: \(String.init(format: "%0.4f", deposit))")
}

calculateDeposit(initialDeposit: 1000, rate: 10)
