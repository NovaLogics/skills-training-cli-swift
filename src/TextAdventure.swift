import Foundation

//Text Adventure

var location = "forest"

func describeLocation() {
    switch location {
    case "forest":
        print("🌲🐅🌳🌿🦍🌴🌳🌳🐊🌱🌿🌴🌳🍃🦁🌳🌳")
        print("🌲 You are in a dark Forest 🌲")
        print("Paths lead north and east.")
    case "cave":

        print("🦇🕷️🕸️💀🍁🍂🕸️🦇🍂⛓🕯️🦇🧟")
        print("🦇 You are in a spooky cave. 🦇")
        print("Paths lead south.")
    case "mountain":
        print("🍃⛰️⛰️⛰️🏔☁️⛰🌿🌻☀️☁️🏝️🚵🏽‍♂️💚🏕️")
        print("⛰ You are on a mountain. ⛰")
        print("The only path leads west.")
    default:
        print("⚠ You are lost. ⚠")
    }
}

print("Welcome to the Adventure Game!")

while true {
    describeLocation()
    print("____________________________________________________________")
    print("> What do you want to do? | go north/east/south/west or quit")
    print("____________________________________________________________")

    
    if let action = readLine()?.lowercased() {
        switch action {
        case "go n": fallthrough
        case "go north":
            location = location == "forest" ? "mountain" : location

        case "go e": fallthrough
        case "go east":
            location = location == "forest" ? "cave" : location

        case "go s": fallthrough
        case "go south":
            location = location == "cave" ? "forest" : location

        case "go w": fallthrough
        case "go west":
            location = location == "mountain" ? "forest" : location

        case "q": fallthrough    
        case "quit":
            print("Thanks for playing!")
            exit(0)
        default:
            print("Invalid action.")
        }
    }
}
