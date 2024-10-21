import Foundation

let choices = ["rock", "paper", "scissors"]
var playerChoice: String? = nil

print("Welcome to Rock, Paper, Scissors!")
print("Type 'rock', 'paper', or 'scissors' to play.")

while playerChoice == nil {

    print("Enter your choice: ", terminator: "")
    
    var input = readLine()?.lowercased()
    
    if(input == "r"){input = "rock"}
    else if (input == "p"){input = "paper"}
     else if (input == "s"){input = "scissors"}
    else {input = ""}

    if  choices.contains(input) {

        playerChoice = input
        let computerChoice = choices.randomElement()!

        print("Computer chose \(computerChoice)")

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
    } 
    else {
        print("Invalid choice, try again.")
    }
}
