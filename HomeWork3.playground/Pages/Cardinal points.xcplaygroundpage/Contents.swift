import UIKit


func compasDirection (degrees : Double) -> String {
    //считаем, что есть 8 направлений компаса (см. массив)
    let directions = ["North", "North-East", "East", "South-East", "South", "South-West", "West", "North-West"]
    
    //к текущему указанному значению добавляем 22.5 градуса, и эту сумму делим на 45 градусов, чтоб не выйти за пределы "сектора" (румба). А также приведение к типу Int
    let i: Int = Int((degrees + 22.5)/45.0)
    
    //используя оператор %, узнаем в каком из восьми "секторов" находится стрелка компаса
    return directions[i % 8]
}
compasDirection(degrees: 405)