import Foundation

// Generate a random number between 1 and 100
let targetNumber = Int.random(in: 1...100)
var guess: Int? = nil

print("Welcome to the Number Guessing Game!")
print("Guess a number between 1 and 100.")

while guess != targetNumber {

    print("Enter your guess: ", terminator: "")
    
    // Read user input
    if let input = readLine(), let userGuess = Int(input) {
        guess = userGuess
        // Compare guess with target number
        if guess! < targetNumber {
            print("Too low!")
        } else if guess! > targetNumber {
            print("Too high!")
        } else {
            print("Congratulations! You guessed the number.")
        }
    } else {
        print("Please enter a valid number.")
    }
}
