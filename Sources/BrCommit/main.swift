import ShellOut

let arguments = CommandLine.arguments

guard arguments.count > 1 else { fatalError("Please enter the commit message") }
let originalCommitMessage = arguments[1]

do {
    let branchName = try shellOut(to: "git rev-parse --abbrev-ref HEAD")
    print("You are currently working on: \(branchName)")
    
    // Challenge 4 --
    //
    // **** ----
    //
    // Part 1
    //
    // Create a string updatedMessage that combines the branch
    // name with the original commit message provided by the user
    //
    // try, using shellout, git commit command
    // for commiting with the updatedMessage
    // **hint**: commit command is in this format:
    // git commit -am "<message>"
    //
    // store the output of this command in a constant
    // and print the output
    
    // **** ----


    // **** ----
    //
    // Part 2
    // Once you are successful with above
    // export your executable target as a CLT (Command Line Tool)
    // use the following commands from the root folder
    //
    // swift build -c release
    // cd .build/release
    // cp -f BrCommit /usr/local/bin/<name-of-your-choice>
    //
    // Once finished exporting (lets say, the name is br-commit)
    //
    // try this new CLT that you have created
    //
    // go to any existing git repo
    // make some changes and commit them with a message and your CLT
    // make sure it runs properly
    // (check for commits under git log)
    // (you can undo the commit later)

    // **** ----


} catch {
    let error = error as! ShellOutError
    print(error.message) // Prints STDERR
    print(error.output) // Prints STDOUT
}
