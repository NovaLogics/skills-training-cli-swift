import Foundation

// Math Quiz

let numQuestions = 5
var score = 0

print("Welcome to the Math Quiz!")
for _ in 1...numQuestions {
    let num1 = Int.random(in: 1...10)
    let num2 = Int.random(in: 1...10)
    let correctAnswer = num1 + num2
    
    print("What is \(num1) + \(num2)?")
    if let answer = readLine(), let userAnswer = Int(answer), userAnswer == correctAnswer {
        print("Correct!")
        score += 1
    } else {
        print("Wrong! The correct answer is \(correctAnswer).")
    }
}

print("You got \(score) out of \(numQuestions) correct.")
