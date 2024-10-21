import Foundation

let choices = ["rock", "paper", "scissors"]
var playerChoice: String? = nil

print("Welcome to Rock, Paper, Scissors!")
print("Type 'rock', 'paper', or 'scissors' to play.")

while playerChoice == nil {
    print("Enter your choice: ", terminator: "")
    if let input = readLine()?.lowercased(), choices.contains(input) {
        playerChoice = input
        let computerChoice = choices.randomElement()!
        print("Computer chose \(computerChoice)")

        // Determine winner
        if playerChoice == computerChoice {
            print("It's a tie!")
        } else if (playerChoice == "rock" && computerChoice == "scissors") ||
                  (playerChoice == "scissors" && computerChoice == "paper") ||
                  (playerChoice == "paper" && computerChoice == "rock") {
            print("You win!")
        } else {
            print("Computer wins!")
        }
    } else {
        print("Invalid choice, try again.")
    }
}
