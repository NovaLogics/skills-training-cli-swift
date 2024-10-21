import Foundation

// Number Guessing Game

// Generate a random number between 1 and 100
let targetNumber = Int.random(in: 1...100)
var guess: Int? = nil
var numberOfTries = 0

print("Welcome to the Number Guessing Game!")
print("Guess a number between 1 and 100.")
print("----------------------------------------------------")

while guess != targetNumber {

    print("Enter your guess: ", terminator: "")

    // Read user input
    if let input = readLine(), let userGuess = Int(input) {
        guess = userGuess
        numberOfTries += 1

        // Compare guess with target number
        if guess! < targetNumber {
            print("Too low!")

        } else if guess! > targetNumber {
            print("Too high!")

        } else {
            print("---------------- Congratulations! -----------------")
            print("You've guessed the number in \(numberOfTries) tries.")
            print("----------------------------------------------------")
        }

    } else {

        print("Please enter a valid number.")

    }
}
