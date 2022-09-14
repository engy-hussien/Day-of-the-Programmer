
func getPD(year: Int)-> String {
    
    while year >= 1700 && year <= 2700 {
        if year >= 1700 && year < 1918 {
            if year % 4 == 0 {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
            
        } else if year > 1918 && year <= 2700 {
            if (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
            
        } else {
            return "26.09.1918"
        }
    }
    return "Unaviable year"
}

let result = getPD(year: 2717)
print(result)


