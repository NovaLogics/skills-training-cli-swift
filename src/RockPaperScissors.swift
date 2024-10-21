import Foundation

// Rock, Paper, Scissors

let choices = ["rock", "paper", "scissors"]
var playerChoice: String? = nil

print("Welcome to Rock, Paper, Scissors!")
print("Type 'rock', 'paper', or 'scissors' to play.")
print("(You can also use 'r', 'p', or 's' as shortcuts)")
print("----------------------------------")

while playerChoice == nil {

    print("Enter your choice: ", terminator: "")
    
    // Get user input and lowercase it
    var input = readLine()?.lowercased()
    
    // Handle shortcuts for inputs
    if input == "r" {
        input = "rock"
    } else if input == "p" {
        input = "paper"
    } else if input == "s" {
        input = "scissors"
    }
    
    // Check if the input is valid (either rock, paper, or scissors)
    if let playerInput = input, choices.contains(playerInput) {
        
        playerChoice = playerInput
        let computerChoice = choices.randomElement()!

        print("----------------------------------")
        print("You chose      : \(playerInput)")
        print("Computer chose : \(computerChoice)")
        print("----------------------------------")

        // Determine winner
        if playerChoice == computerChoice {
            print("It's a tie!")
        } 
        else if (playerChoice == "rock" && computerChoice == "scissors") ||
                  (playerChoice == "scissors" && computerChoice == "paper") ||
                  (playerChoice == "paper" && computerChoice == "rock") {
            print("You win!")
        } 
        else {
            print("Computer wins!")
        }
    } else {
        print("Invalid choice, try again.")
    }
}
