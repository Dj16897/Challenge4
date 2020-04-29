import ShellOut

let arguments = CommandLine.arguments

guard arguments.count > 1 else { fatalError("Please enter the commit message") }
let originalCommitMessage = arguments[1]

do {
    let branchName = try shellOut(to: "git rev-parse --abbrev-ref HEAD")
    print("You are currently working on: \(branchName)")
    
    // Challenge 4 --
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
} catch {
    let error = error as! ShellOutError
    print(error.message) // Prints STDERR
    print(error.output) // Prints STDOUT
}
