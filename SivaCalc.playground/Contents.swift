// SivaCalc — by Jeremy Petter, 2016

let startingNumber = 740
let endingNumber = 730

let input = [
    // Enter node values here (you will need to pre calculate the +,-,*2,/2 values)

    [420, 670, 590, -590, -440],    // column 1 [top node, second node ... bottom node],
    [320, 380, 490, -440, -300],    // column 2
    [300, 250, 210, -320, -190],    // ... etc ...
    [120, 150, 220, -150, -90],
    [70, 30, 80, -30, -20]
]

func enumerate(rowAtIndex index:Int, total:Int, numbers:[Int]) {

    // This is not a very efficient algorythm:
    // it will run almost 4000 times for the last puzzle 😅

    if index >= input.count {
        if total == endingNumber {
            print(numbers)
        }
        return
    }

    for number in input[index] {
        var tempNumbers = numbers
        tempNumbers.append(number)
        enumerate(rowAtIndex: index.advanced(by: 1), total: total + number, numbers: tempNumbers)
    }
}

enumerate(rowAtIndex: 0, total: startingNumber, numbers: [Int]())   // prints valid value combinations to the terminal (below).
