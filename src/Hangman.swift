import Foundation

// Hangman

let word = "swift"
var guessedLetters: [Character] = []
var remainingAttempts = 6

// Function to display current progress
func displayWord() {
    var display = ""
    for letter in word {
        if guessedLetters.contains(letter) {
            display += "\(letter) "
        } else {
            display += "_ "
        }
    }
    print(display.trimmingCharacters(in: .whitespaces))
}

print("Welcome to Hangman!")
print("___________________")

print("You have \(remainingAttempts) attempts to guess the word.")

while remainingAttempts > 0 {
    displayWord()
    print("Guess a letter: ", terminator: "")
    
    if let guess = readLine(), guess.count == 1, let letter = guess.lowercased().first {

        if guessedLetters.contains(letter) {
            print("> You've already guessed that letter.")
        } 
        else if word.contains(letter) {
            guessedLetters.append(letter)
            print("> Correct!")
        } 
        else {
            guessedLetters.append(letter)
            remainingAttempts -= 1
            print("> Incorrect! \(remainingAttempts) attempts left.")
        }
        
        if word.allSatisfy({ guessedLetters.contains($0) }) {
            print(">> Congratulations! You've guessed the word: \(word)")
            break
        }

        print()

    } 
    else {
        print("Please guess a single letter.")
    }
}

if remainingAttempts == 0 {
    print("Game over! The word was: \(word)")
}
