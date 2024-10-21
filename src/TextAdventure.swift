import Foundation

//Text Adventure

var location = "forest"

func describeLocation() {
    switch location {
    case "forest":
        print("You are in a dark forest.")
        print("Paths lead north and east.")
    case "cave":
        print("You are in a spooky cave. Paths lead south.")
    case "mountain":
        print("You are on a mountain. The only path leads west.")
    default:
        print("You are lost.")
    }

    print("______________________________________________")
}

print("Welcome to the Adventure Game!")

while true {
    describeLocation()
    print("What do you want to do?")
    print("go north/east/south/west or quit ")
    print("(shortcuts: go n/e/s/w )")
    print("______________________________________________")

    
    if let action = readLine()?.lowercased() {
        switch action {
        case "go n": fallthrough
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
