import Foundation

//Text Adventure

var location = "forest"

func describeLocation() {
    switch location {
    case "forest":
        print("You are in a dark forest. Paths lead north and east.")
    case "cave":
        print("You are in a spooky cave. Paths lead south.")
    case "mountain":
        print("You are on a mountain. The only path leads west.")
    default:
        print("You are lost.")
    }
}

print("Welcome to the Adventure Game!")

while true {
    describeLocation()
    print("What do you want to do?")
    print("go north(n) /east(e) /south(s) /west(w) or quit")
    print("Ex: go north or go n")
    print("______________________________________________")
    
    if let action = readLine()?.lowercased() {
        switch action {
        case "go north":
            location = location == "forest" ? "mountain" : location
        case "go east":
            location = location == "forest" ? "cave" : location
        case "go south":
            location = location == "cave" ? "forest" : location
        case "go west":
            location = location == "mountain" ? "forest" : location
        case "quit":
            print("Thanks for playing!")
            exit(0)
        default:
            print("Invalid action.")
        }
    }
}
